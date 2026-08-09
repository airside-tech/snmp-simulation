# Use an official lightweight Python runtime as a base image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first to leverage Docker caching
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy everything from local src folder into the container
COPY src/ .

# Expose SNMP UDP ports (161 for GET/SET, 162 for TRAPs)
EXPOSE 161/udp
EXPOSE 162/udp

# Run the application when the container starts
CMD ["python", "app.py"]
