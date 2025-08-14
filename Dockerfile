# Use older Python image to avoid compatibility issues
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy Pipfile and install dependencies
COPY Pipfile Pipfile.lock ./
RUN pip install pipenv && pipenv install --system

# Copy the rest of the app
COPY . .

# Expose Flask's default port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
