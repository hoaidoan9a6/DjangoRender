FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt /code/
RUN pip install -r requirements.txt

# This line is likely a mistake, as it's a shell command and not applicable in a Dockerfile
# set -o errexit

# Remove the following line, as it's redundant
# pip install -r requirements.txt

# These are Django management commands typically used for setting up a Django application
RUN python manage.py collectstatic --no-input
RUN python manage.py migrate
RUN python manage.py newsuperuser

# You may want to add a comment here indicating the need for further editing
# Edit the following line according to your application's structure
COPY . /code/
