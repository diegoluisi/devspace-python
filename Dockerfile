FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
ADD . .

EXPOSE 5000

CMD ["python","main.py"]