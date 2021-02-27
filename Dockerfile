FROM python:3.8-buster


WORKDIR /usr/src/app
COPY requirements.txt ./

ENV DB_TYPE=sqlite3
ENV DB_ENGINE=django.db.backends.sqlite3
ENV DB_NAME=db.sqlite3
ENV SECRET_KEY=secretstuff874592

RUN pip install -r requirements.txt
COPY . .

RUN python manage.py makemigrations
RUN python manage.py migrate


CMD ["python", "manage.py", "runserver", "0:8000", "--noreload"]

