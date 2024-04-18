FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt /code/
RUN pip install -r requirements.txt



# You may want to add a comment here indicating the need for further editing
# Edit the following line according to your application's structure
COPY . /code/
