from django.urls import path
from . import views

urlpatterns = [
    # Configuración de las conecciones para poder mostrarla en el navegador. Cada path conecta a las distintas vizualizaciones del archivo views.py
    path("", views.Home, name="home"),
    
    path("index/", views.index, name="index"),
    path("index/<int:myid>/", views.quiz, name="quiz"), 
    path('index/<int:myid>/data/', views.quiz_data_view, name='quiz-data'),
    path('index/<int:myid>/save/', views.save_quiz_view, name='quiz-save'),
    
    path("team/", views.Team, name="team"),
    path("signup/", views.Signup, name="signup"),
    path("login/", views.Login, name="login"),
    path("logout/", views.Logout, name="logout"),
    path('results_public/', views.results_public, name='results_public'),
    
    path('add_quiz/', views.add_quiz, name='add_quiz'),    
    path('add_question/', views.add_question, name='add_question'),  
    path('add_options/<int:myid>/', views.add_options, name='add_options'), 
    path('results/', views.results, name='results'),    
    path('delete_question/<int:myid>/', views.delete_question, name='delete_question'),  
    path('delete_result/<int:myid>/', views.delete_result, name='delete_result'),    
]