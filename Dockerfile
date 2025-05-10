# Use official Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

#get the python requirements
COPY requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy code into container
COPY app.py .

# Tell Docker what port the container listens on
EXPOSE 5000

# Command to run when container starts
CMD ["python", "app.py"]
