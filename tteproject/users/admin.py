from django.contrib import admin
from .models import Pegawai, Pengguna

@admin.register(Pegawai)
class PostAdmin(admin.ModelAdmin):
    list_display = ('nama', 'nip', 'jabatan', 'status_data')
    list_filter = ('status_data', 'organisasi_unit')
    search_fields = ('nama', 'nip')

@admin.register(Pengguna)
class PostPengguna(admin.ModelAdmin):
    list_display = ('username', 'password')