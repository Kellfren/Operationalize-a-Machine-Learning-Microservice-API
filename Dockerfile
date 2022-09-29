FROM python:3.7.3-stretch
#FROM python:3.10.6
#FROM python:3.7.14-buster

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
#RUN pip install pip==20.1  --trusted-host pypi.python.org -r requirements.txt
# hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 8000

## Step 5:
# Run app.py at container launch
CMD [ "python", "app.py" ]
