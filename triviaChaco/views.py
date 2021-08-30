from django.shortcuts import render, redirect
from .models import *
from django.http import JsonResponse
from django.contrib.auth  import authenticate,  login, logout
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from .forms import QuizForm, QuestionForm
from django.forms import inlineformset_factory
import requests

# Funciones que organizan y conectan las vizualizaciones con los htmls y el archivo urls.py 
# Conecta a la vista que muestra las trivias solicitando todos los elementos del módulo Quiz
def index(request):
    quiz = Quiz.objects.all()
    para = {'quiz' : quiz}
    return render(request, "index.html", para)

# Conecta a la vista de inicio
def Home(request):
    return render(request, "home.html")

# Conecta a la vista Nosotros
def Team(request):
    return render(request, "team.html")

# Solicita el ingreso del usuuario para continuar
@login_required(login_url = '/login')
# Conecta a la primera página que muestra la trivia solicitada por el usuario
def quiz(request, myid):
    quiz = Quiz.objects.get(id=myid)
    return render(request, "quiz.html", {'quiz':quiz})

# Conecta a la vista que muestra las preguntas de la trivia solicitada por el usuario
def quiz_data_view(request, myid):
    quiz = Quiz.objects.get(id=myid)
    questions = []
    for q in quiz.get_questions():
        answers = []
        for a in q.get_answers():
            answers.append(a.content)
        questions.append({str(q): answers})
    return JsonResponse({
        'data': questions,
        'time': quiz.time,
    })

# Guarda los datos de las elecciones y aciertos realizados por el usuario
def save_quiz_view(request, myid):
    if request.is_ajax():
        questions = []
        data = request.POST
        data_ = dict(data.lists())

        data_.pop('csrfmiddlewaretoken')

        for k in data_.keys():
            print('key: ', k)
            question = Question.objects.get(content=k)
            questions.append(question)

        user = request.user
        quiz = Quiz.objects.get(id=myid)

        score = 0
        marks = []
        correct_answer = None

        for q in questions:
            a_selected = request.POST.get(q.content)

            if a_selected != "":
                question_answers = Answer.objects.filter(question=q)
                for a in question_answers:
                    if a_selected == a.content:
                        if a.correct:
                            score += 1
                            correct_answer = a.content
                    else:
                        if a.correct:
                            correct_answer = a.content

                marks.append({str(q): {'correct_answer': correct_answer, 'answered': a_selected}})
            else:
                marks.append({str(q): 'not answered'})
     
        Marks_Of_User.objects.create(quiz=quiz, user=user, score=score)
        
        return JsonResponse({'passed': True, 'score': score, 'marks': marks})
    
# Conecta y gestiona la vista de registro
def Signup(request):
    if request.user.is_authenticated:
        return redirect('/')
    if request.method=="POST":   
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password1']
        confirm_password = request.POST['password2']
        ctoken = request.POST['ctoken']
        
        if password != confirm_password:
            return redirect('/register')

        if ctoken == 'empty':
            return redirect('/register')

        payload = {'secret':"", 'response':ctoken}
        r = requests.post('https://www.google.com/recaptcha/api/siteverify', data=payload).json()

        if r['success'] == False or len(r) <= 2 or r['score'] <= 0.1:
            return redirect('/register')
        
        user = User.objects.create_user(username, email, password)
        user.save()
        return render(request, 'login.html')  
    return render(request, "signup.html")

# Conecta y gestiona la vista de ingreso
def Login(request):
    if request.user.is_authenticated:
        return redirect('/index')
    if request.method=="POST":
        username = request.POST['username']
        password = request.POST['password']
        
        user = authenticate(username=username, password=password)
        
        if user is not None:
            login(request, user)
            return redirect("/index")
        else:
            return render(request, "login.html") 
    return render(request, "login.html")

# Conecta y gestiona la desconección del usuario
def Logout(request):
    logout(request)
    return redirect('/')

# Gestiona la sección para agregar los formularios de las trivias y la conección a la base de datos
def add_quiz(request):
    if request.method=="POST":
        form = QuizForm(data=request.POST)
        if form.is_valid():
            quiz = form.save(commit=False)
            quiz.save()
            obj = form.instance
            return render(request, "add_quiz.html", {'obj':obj})
    else:
        form=QuizForm()
    return render(request, "add_quiz.html", {'form':form})

# Gestiona la sección para agregar los formularios de las preguntas y la conección a la base de datos
def add_question(request):
    questions = Question.objects.all()
    questions = Question.objects.filter().order_by('-id')
    if request.method=="POST":
        form = QuestionForm(request.POST)
        if form.is_valid():
            form.save()
            return render(request, "add_question.html")
    else:
        form=QuestionForm()
    return render(request, "add_question.html", {'form':form, 'questions':questions})

# Gestiona la sección para eliminar los formularios de las preguntas y la conección a la base de datos
def delete_question(request, myid):
    question = Question.objects.get(id=myid)
    if request.method == "POST":
        question.delete()
        return redirect('/add_question')
    return render(request, "delete_question.html", {'question':question})

# Gestiona la sección para agregar los formularios de las respuestas y la conección a la base de datos
def add_options(request, myid):
    question = Question.objects.get(id=myid)
    QuestionFormSet = inlineformset_factory(Question, Answer, fields=('content','correct', 'question'), extra=4)
    if request.method=="POST":
        formset = QuestionFormSet(request.POST, instance=question)
        if formset.is_valid():
            formset.save()
            alert = True
            return render(request, "add_options.html", {'alert':alert})
    else:
        formset=QuestionFormSet(instance=question)
    return render(request, "add_options.html", {'formset':formset, 'question':question})

# Muestra los resultados que puede ver cualquier usuario
def results_public(request):
    marks = Marks_Of_User.objects.all()
    return render(request, "results_public.html", {'marks':marks})

# Muestra los resultados solo para el administrador
def results(request):
    marks = Marks_Of_User.objects.all()
    return render(request, "results.html", {'marks':marks})

# Posibilita al administrador eliminar todos los resultados
def delete_result(request, myid):
    marks = Marks_Of_User.objects.get(id=myid)
    if request.method == "POST":
        marks.delete()
        return redirect('/results')
    return render(request, "delete_result.html", {'marks':marks})