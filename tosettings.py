from django.conf import settings
from twilio.rest import Client

# Twilio account credentials from settings
account_sid = settings.TWILIO_ACCOUNT_SID
auth_token = settings.TWILIO_AUTH_TOKEN
twilio_phone_number = settings.TWILIO_PHONE_NUMBER

# Phone number to send SMS to
destination_phone_number = '+1234567890'  # replace with a valid phone number

# Create Twilio client
client = Client(account_sid, auth_token)

# Send SMS message
message = client.messages.create(
    body='Test message from Twilio!',
    from_=twilio_phone_number,
    to=destination_phone_number
)

# Print SMS message SID
print('SMS message SID:', message.sid)
