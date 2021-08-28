from django.db import models
from django.contrib.auth.models import User
import random

# Crea el modelo de base de datos para las categorías de las trivias
class Quiz(models.Model):
    name = models.CharField(max_length=50)
    desc = models.CharField(max_length=500)    
    number_of_questions = models.IntegerField(default=1)
    time = models.IntegerField(help_text="Duración de la trivia en segundos", default="1")
    
    def __str__(self): # Retorna el texto de las trivias
        return self.name

    def get_questions(self): # Solicita las preguntas asignadas a cada categoría
        return self.question_set.all()
    

class Question(models.Model):
    content = models.CharField(max_length=500)
    quiz = models.ForeignKey(Quiz, on_delete=models.CASCADE)
    
    def __str__(self):
        return self.content
    
    def get_answers(self):
        return self.answer_set.all()
    
# Crea el modelo de base de datos para las preguntas de cada categoría    
class Answer(models.Model):
    content = models.CharField(max_length=200)
    correct = models.BooleanField(default=False)
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    
    def __str__(self):
        return f"question: {self.question.content}, answer: {self.content}, correct: {self.correct}"
    
# Crea el modelo de base de datos para las respuestas de los usuarios
class Marks_Of_User(models.Model):
    quiz = models.ForeignKey(Quiz, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    score = models.FloatField()
    
    def __str__(self):
        return str(self.quiz)
