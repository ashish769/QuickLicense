"""
URL configuration for project project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
# for forgot password
from django.contrib.auth import views as auth_views

from app import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.generate_keys_view,name='superadmin'),
    path('useradmin/',views.useradmin,name='useradmin'),
     path('xadmin/',views.xadmin,name='xadmin'),
    path('licencetable/',views.licence_table,name="licence_table"),
    path('printedlicencetable/',views.printed_licence_table,name="printed_licence_table"),
    path('licencefront/<int:id>',views.licence_front,name='licencefront'),
    path('createsuperadmin/',views.createsuperadmin,name='createsuperuser'),
    path('createxadmin/',views.createxadmin,name='createxadmin'),
    path('createuseradmin/',views.createuseradmin,name='createuseradmin'),
   
    #auth
    path('login/',views.log_in,name='login'),
    path('logout/',views.log_out,name='logout'),
    #for change password//bracket vitra ko template haru hataune
    path('password_reset/', auth_views.PasswordResetView.as_view(template_name='auth/password_reset.html'), name='password_reset'),
    path('password_reset_done/', auth_views.PasswordResetDoneView.as_view(template_name='auth/password_reset_done.html'), name='password_reset_done'),
    path('password_reset_confirm/<uidb64>/<token>/',auth_views.PasswordResetConfirmView.as_view(template_name='auth/password_reset_confirm.html'), name='password_reset_confirm'),
    path('password_reset_complete/', auth_views.PasswordResetCompleteView.as_view(template_name='auth/password_reset_complete.html'), name='password_reset_complete'),


    

]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)