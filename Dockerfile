#Base Image
FROM python:3.14.0a3-alpine3.21

# Set the working directory
WORKDIR /app

# copy the requirements file into the container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

#Expose the port the app runs on
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]

