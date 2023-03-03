from rest_framework import serializers

class SMSSerializer(serializers.Serializer):
    phone_number = serializers.CharField(max_length=15, required=True)

    def validate_phone_number(self, value):
        # Validate phone number format
        if not value.startswith('+') or not all(char.isdigit() for char in value[1:]):
            raise serializers.ValidationError('Invalid phone number format. Please include the country code and use only digits.')
        return value
