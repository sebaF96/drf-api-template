from django.urls import path
from .views import current_user, UserCreateList, UserRetrieveUpdateDestroy

urlpatterns = [
    path('current_user', current_user),
    path('users', UserCreateList.as_view()),
    path('users/<int:user_id>', UserRetrieveUpdateDestroy.as_view())
]
