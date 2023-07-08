# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_RUN_PORT 4343

ENV OPEN_API_KEY "#{OPEN_API_KEY}#"

EXPOSE 4343

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
