# from django.contrib.auth.models import AbstractBaseUser, BaseUserManager, PermissionsMixin
# from django.core.mail import send_mail
# from django.db import models
# from django.utils import timezone
# from django.utils.translation import gettext_lazy as _
# from phonenumber_field.modelfields import PhoneNumberField
# from twilio.rest import Client
# from django.conf import settings
# import jwt
# import uuid

# class CustomUserManager(BaseUserManager):
#     def create_user(self, email=None, phone=None, password=None, **extra_fields):
#         if not email and not phone:
#             raise ValueError('Either email or phone must be set')
#         email = self.normalize_email(email) if email else None
#         phone = str(phone) if phone else None
#         user = self.model(email=email, phone=phone, **extra_fields)
#         user.set_password(password)
#         user.save(using=self._db)
#         return user

#     def create_superuser(self, email=None, phone=None, password=None, **extra_fields):
#         extra_fields.setdefault('is_staff', True)
#         extra_fields.setdefault('is_superuser', True)
#         return self.create_user(email, phone, password, **extra_fields)

# class CustomUser(AbstractBaseUser, PermissionsMixin):
#     id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
#     email = models.EmailField(_('email address'), unique=True, blank=True, null=True)
#     phone = PhoneNumberField(unique=True, blank=True, null=True)
#     first_name = models.CharField(_('first name'), max_length=30, blank=True)
#     last_name = models.CharField(_('last name'), max_length=150, blank=True)
#     is_staff = models.BooleanField(default=False)
#     is_active = models.BooleanField(default=True)
#     date_joined = models.DateTimeField(default=timezone.now)

#     USERNAME_FIELD = 'email'
#     EMAIL_FIELD = 'email'
#     REQUIRED_FIELDS = ['first_name', 'last_name', 'phone']

#     objects = CustomUserManager()

#     class Meta:
#         verbose_name = _('user')
#         verbose_name_plural = _('users')

#     def __str__(self):
#         return self.email or self.phone

# class ConfirmationCode(models.Model):
#     user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
#     code = models.CharField(max_length=6)
#     email_sent = models.BooleanField(default=False)
#     sms_sent = models.BooleanField(default=False)
#     created_at = models.DateTimeField(auto_now_add=True)

#     def send_email(self):
#         if not self.email_sent:
#             send_mail(
#                 'Confirmation Code',
#                 f'Your confirmation code is: {self.code}',
#                 settings.DEFAULT_FROM_EMAIL,
#                 [self.user.email],
#                 fail_silently=False,
#             )
#             self.email_sent = True
#             self.save()

#     def send_sms(self):
#         if not self.sms_sent:
#             client = Client(settings.TWILIO_ACCOUNT_SID, settings.TWILIO_AUTH_TOKEN)
#             message = client.messages.create(
#                 body=f'Your confirmation code is: {self.code}',
#                 from_=settings.TWILIO_PHONE_NUMBER,
#                 to=str(self.user.phone)
#             )
#             self.sms_sent = True
#             self.save()

# class JWTToken(models.Model):
#     user = models.OneToOneField(CustomUser, on_delete=models.CASCADE)
#     token = models.CharField(max_length=255)
#     created_at = models.DateTimeField(auto_now_add=True)

#     @classmethod
#     def generate_token(cls, user):
#         payload = {'user_id': str(user.id)}
#         token = jwt.encode(payload, settings.SECRET_KEY, algorithm='HS256
