# Use official Python base image
FROM python:3.8-slim

# Set working directory inside the container
WORKDIR /app

# Copy dependencies file first (for caching layers)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (change if needed) default is 5000 for Flask
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
