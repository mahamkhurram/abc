# Use an official Python runtime as a parent image
FROM python:3.8-slim
RUN mkdir /app
# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory

# Install any needed packages specified in requirements.txt
RUN pip install --r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .



# Run app.py when the container launches
CMD ["python", "app.py"]