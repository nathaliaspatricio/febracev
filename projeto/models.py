from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Projeto(models.Model):
    nome = models.CharField(max_length=100)
    resumo = models.TextField()
    alunos = models.ManyToManyField(User, related_name='alunos')
    orientadores = models.ManyToManyField(User, related_name='orientadores')
    instituicao = models.CharField(max_length=100)
    categoria = models.CharField(max_length=50)
    subcategoria = models.CharField(max_length=50)
    palavra_chave = models.CharField(max_length=100)
