# Use the official Python image as the base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install -r requirements.txt

# Copy your Flask application code into the container
COPY . .

# Expose the port your Flask app will run on
EXPOSE 8080

# Define the command to run your application
CMD ["python", "app.py"]
