FROM python:3.10
ENV PYTHONUNBUFFERED=1
RUN mkdir /django
COPY . /django
WORKDIR /django
RUN pip3 install -r requirements.txt
CMD python3 manage.py makemigrations && python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000