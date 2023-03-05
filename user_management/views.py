# from rest_framework import status
# from rest_framework.decorators import api_view
# from rest_framework.response import Response
# from twilio.rest import Client
# from django.conf import settings
# from .serializers import SMSSerializer

# @api_view(['POST'])
# def send_sms(request):
#     # Deserialize input using SMSSerializer
#     serializer = SMSSerializer(data=request.data)
#     serializer.is_valid(raise_exception=True)
#     phone_number = serializer.validated_data['phone_number']

#     # Create Twilio client
#     client = Client(settings.TWILIO_ACCOUNT_SID, settings.TWILIO_AUTH_TOKEN)

#     # Send SMS message
#     try:
#         message = client.messages.create(
#             body='Test message from Twilio!',
#             from_=settings.TWILIO_PHONE_NUMBER,
#             to=phone_number
#         )
#         # Return SMS message SID
#         return Response({'message_sid': message.sid}, status=status.HTTP_200_OK)
#     except Exception as e:
#         # Return error message if SMS sending fails
#         return Response({'error': str(e)}, status=status.HTTP_400_BAD_REQUEST)
