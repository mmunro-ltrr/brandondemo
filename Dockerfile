FROM python:3.10.1-bullseye

WORKDIR /app

COPY All_together.py /app/
COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "./All_together.py"]
