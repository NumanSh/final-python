# Use official Python image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy Pipfiles and install dependencies
COPY Pipfile Pipfile.lock ./
RUN pip install pipenv && pipenv install --system

# Copy the entire app
COPY . .

# Expose the Flask port
EXPOSE 5000

# Start the app
CMD ["python", "app.py"]
