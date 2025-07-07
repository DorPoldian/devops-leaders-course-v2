FROM python:3.10-slim

WORKDIR /home/dor/devops-leaders-course-v2

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]

ENV key=value
EXPOSE 8000
