"""ashaworker URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
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
from . import views
from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('',views.first),
    path('index',views.index),
    path('aregister',views.aregister),
    path('ashaprofile',views.ashaprofile),
    path('aregisters',views.aregisters),
    path('login/',views.login),
    path('viewrepply',views.viewrepply),
    path('login/ulogin',views.ulogin),
    path('logout/',views.logout),
    path('service',views.service),
    path('pregnanttt',views.pregnanttt),
    path('instruction',views.instruction),
    path('ainstruction',views.ainstruction),
    path('userquestion',views.userquestion),
    path('ashareport',views.ashareport),
    path('userreg',views.userreg),
    path('pregreg',views.pregreg),
    path('userview',views.userview),
    path('addashareport',views.addashareport),
    path('ucview',views.ucview),
    path('udelete/<int:id>',views.udelete,name="udelete"),
    path('ashareply/<int:id>',views.ashareply,name="ashareply"),
    path('ashareply/adduserreply',views.adduserreply,name="adduserreply"),
    path('famdet',views.famdet),
    path('asharep',views.asharep),
    path('vacreg',views.vacreg),
    path('viewashareport',views.viewashareport),
    path('arview',views.arview),
    path('viewvaccinereport',views.viewvaccinereport),
    path('acview',views.acview),
    path('viewashaworkerss',views.viewashaworkerss),
    path('viewfamilydet',views.viewfamilydet),
    path('fcview',views.fcview),
    path('viewpreg',views.viewpreg),
    path('viewvaccine',views.viewvaccine),
    path('askquestion',views.askquestion),
    path('adduserask',views.adduserask),
    path('userprofile',views.userprofile),
    path('pcview',views.pcview),
    path('ashaview',views.ashaview),
    path('aacview',views.aacview),
    
    




]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

