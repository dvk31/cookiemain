#Dockerfile

# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory to /app/mainproject
WORKDIR /app/mainproject

# Copy the current directory contents into the container at /app/mainproject
COPY . /app/mainproject/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for the Django development server
EXPOSE 8000

# Run Django development server when the container starts
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
