from django.shortcuts import render

# Create your views here.


def home(request, view=0):
    return render(request, 'game/home.html', )
