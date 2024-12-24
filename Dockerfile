# Use a Python base image in version 3.8
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY techtrends .

# Install packages defined in the requirements.txt file
RUN pip install -r requirements.txt

# Ensure that the database is initialized with the pre-defined posts
RUN python init_db.py

# Expose the application port 3111
EXPOSE 3111

# Command to run the application
CMD ["python", "app.py"]
