# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port on which Flask runs
EXPOSE 5000

# Run the application
CMD ["python", "app.py","--host=0.0.0.0"]
