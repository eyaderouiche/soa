FROM python:3.14-slim

WORKDIR /app

COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt

COPY manage.py .
COPY config ./config

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000", "--noreload"]