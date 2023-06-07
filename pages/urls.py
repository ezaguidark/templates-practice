from django.urls import path
from .views import HomePageView, AboutPageView
# tambien se podria importar views completamente

urlpatterns = [
    path('about/', AboutPageView.as_view(), name = 'about'),
    path('', HomePageView.as_view(), name= 'home'),
]