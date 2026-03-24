# Baseimage
FROM python:3.9-slim

# Define Build-Variable
ARG WORKDIR=/app

# Set Working Directory
WORKDIR $WORKDIR

# Copy relevant Files from Host during build process
COPY . $WORKDIR

# Install all dependencies
RUN pip install -r requirements.txt

# Open Port 
EXPOSE 8025

# Start the application
CMD ["sh", "-c", "python babyshop_app/manage.py migrate && python babyshop_app/manage.py runserver 0.0.0.0:8025"]



