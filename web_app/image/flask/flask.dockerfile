# Docker image to use
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy application files
COPY requirements.txt .

# Install required packages
RUN pip install -r requirements.txt

# Copy the rest application files
COPY . .

# Create necessary directories
RUN set -x &&
  mkdir /app/data &&
  mkdir /app/logs &&
  mkdir /app/config &&
  touch /app/data/app.data &&
  touch /app/logs/app.log &&
  touch /app/config/settings.ini

# Command to run the application
CMD ["python", "app.py"]
