FROM python:3.11

WORKDIR /project
COPY  . .

RUN apt update

RUN pip install -r ./requirements.txt

EXPOSE 8880

CMD ["python", "manage.py", "runserver", "0.0.0.0:8880"]
# RUN python manage.py makemigrations