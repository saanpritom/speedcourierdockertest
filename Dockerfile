FROM python:3

WORKDIR /usr/src/speedcourier-app

COPY couriertrack ./couriertrack
COPY speedcourier ./speedcourier
COPY static ./static
COPY staticfiles ./staticfiles
COPY templates ./templates
COPY README.md ./
COPY manage.py ./
COPY speedcourier.sql ./
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "manage.py", "runserver", "--insecure" ]
