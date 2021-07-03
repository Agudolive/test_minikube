FROM python:3.8

RUN apt-get update && apt-get install -y --no-install-recommends

RUN python -m pip install --upgrade pip

WORKDIR /app/

COPY requirements.txt .

RUN python -m pip install -r requirements.txt

COPY . .

EXPOSE 80

CMD ["gunicorn", "-b", ":80", "main:app"]
