from django.urls import path
# from .registration_views import UserRegistrationView
# from .login_views import UserLoginView
# from .detail_views import UserDetailView
# from .update_views import UserUpdateView
# from .delete_views import UserDeleteView
from .views import send_sms
app_name = 'user_management'

urlpatterns = [
    #path('register/', UserRegistrationView.as_view(), name='register'),
    #path('login/', UserLoginView.as_view(), name='login'),
    #path('<int:pk>/', UserDetailView.as_view(), name='user_detail'),
    #path('<int:pk>/update/', UserUpdateView.as_view(), name='user_update'),
    #path('<int:pk>/delete/', UserDeleteView.as_view(), name='user_delete'),
     path('send-sms/', send_sms, name='send-sms'),
]

