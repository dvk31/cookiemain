import os


app_name = 'user_management'


# Use Django's startapp command to create the app directory
os.system(f'python manage.py startapp {app_name}')
app_dir = os.path.join(os.getcwd(), app_name)


# Create the models.py file and write the imports
models_file = os.path.join(app_dir, 'models.py')
with open(models_file, 'w') as f:
    f.write('from django.db import models\n')
    f.write('from django.contrib.auth.models import AbstractUser\n')

    # Write the User model
    f.write('\n')
    f.write('class User(AbstractUser):\n')
    f.write('    pass\n')

# Create the views.py files and write the imports
registration_views_file = os.path.join(app_dir, 'registration_views.py')
with open(registration_views_file, 'w') as f:
    f.write('from django.shortcuts import render, redirect\n')
    f.write('from django.views import View\n')
    f.write('from django.urls import reverse_lazy\n')
    f.write(f'from .models import User\n')

    # Write the UserRegistrationView class
    f.write('\n')
    f.write(f'class UserRegistrationView(View):\n')
    f.write('    pass\n')

login_views_file = os.path.join(app_dir, 'login_views.py')
with open(login_views_file, 'w') as f:
    f.write('from django.shortcuts import render, redirect\n')
    f.write('from django.views import View\n')
    f.write(f'from .models import User\n')

    # Write the UserLoginView class
    f.write('\n')
    f.write(f'class UserLoginView(View):\n')
    f.write('    pass\n')

detail_views_file = os.path.join(app_dir, 'detail_views.py')
with open(detail_views_file, 'w') as f:
    f.write('from django.shortcuts import render, redirect\n')
    f.write('from django.views import View\n')
    f.write('from django.urls import reverse_lazy\n')
    f.write('from django.contrib.auth.mixins import LoginRequiredMixin\n')
    f.write(f'from .models import User\n')

    # Write the UserDetailView class
    f.write('\n')
    f.write(f'class UserDetailView(LoginRequiredMixin, View):\n')
    f.write('    login_url = reverse_lazy(\'login\')\n')
    f.write(f'    model = User\n')
    f.write('    template_name = \'user_detail.html\'\n')

update_views_file = os.path.join(app_dir, 'update_views.py')
with open(update_views_file, 'w') as f:
    f.write('from django.shortcuts import render, redirect\n')
    f.write('from django.views import View\n')
    f.write('from django.urls import reverse_lazy\n')
    f.write('from django.contrib.auth.mixins import LoginRequiredMixin\n')
    f.write(f'from .models import User\n')

    # Write the UserUpdateView class
    f.write('\n')
    f.write(f'class UserUpdateView(LoginRequiredMixin, View):\n')
    f.write('    login_url = reverse_lazy(\'login\')\n')
    f.write(f'    model = User\n')
    f.write('    template_name = \'user_form.html\'\n')

delete_views_file = os.path.join(app_dir, 'delete_views.py')
with open(delete_views_file, 'w') as f:
    f.write('from django.shortcuts import render, redirect\n')
    f.write('from django.views import View\n')
    f.write('from django.urls import reverse_lazy\n')
    f.write('from django.contrib.auth.mixins import LoginRequiredMixin\n')
    f.write(f'from .models import User\n')

    # Write the UserDeleteView class
    f.write('\n')
    f.write(f'class UserDeleteView(LoginRequiredMixin, View):\n')
    f.write('    login_url = reverse_lazy(\'login\')\n')
    f.write(f'    model = User\n')
    f.write('    success_url = reverse_lazy(\'login\')\n')
    f.write('    template_name = \'user_confirm_delete.html\'\n')

# Create the urls.py file and write the imports
urls_file = os.path.join(app_dir, 'urls.py')
with open(urls_file, 'w') as f:
    f.write('from django.urls import path\n')
    f.write(f'from .registration_views import UserRegistrationView\n')
    f.write(f'from .login_views import UserLoginView\n')
    f.write(f'from .detail_views import UserDetailView\n')
    f.write(f'from .update_views import UserUpdateView\n')
    f.write(f'from .delete_views import UserDeleteView\n')

    # Write the URL patterns
    f.write('\n')
    f.write(f'app_name = \'{app_name}\'\n\n')

    f.write('urlpatterns = [\n')
    f.write('    path(\'register/\', UserRegistrationView.as_view(), name=\'register\'),\n')
    f.write('    path(\'login/\', UserLoginView.as_view(), name=\'login\'),\n')
    f.write('    path(\'<int:pk>/\', UserDetailView.as_view(), name=\'user_detail\'),\n')
    f.write('    path(\'<int:pk>/update/\', UserUpdateView.as_view(), name=\'user_update\'),\n')
    f.write('    path(\'<int:pk>/delete/\', UserDeleteView.as_view(), name=\'user_delete\'),\n')
    f.write(']\n')

