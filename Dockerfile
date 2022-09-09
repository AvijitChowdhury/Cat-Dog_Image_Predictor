FROM python:3.10
COPY requirements.txt .

RUN pip install -r requirements.txt
COPY . /app
WORKDIR /app
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app