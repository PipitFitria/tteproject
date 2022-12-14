from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from .forms import UserRegisterForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from .models import Pegawai


def home(request):
    return render(request, 'users/home.html')

def pengumuman(request):
    return render(request, 'users/pengumuman.html')

def layanan(request):
    return render(request, 'users/layanan.html')

def pegawai(request):
    pegawais = Pegawai.objects.all()
    context = {'pegawais': pegawais}
    return render(request, 'users/pegawai.html', context)

def register(request):
    if request.method == "POST":
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Hi {username}, your account was created successfully')
            return redirect('home')
    else:
        form = UserRegisterForm()

    return render(request, 'users/register.html', {'form': form})


@login_required()
def profile(request):
    return render(request, 'users/profile.html')
