FROM python:3.10-slim

WORKDIR /home/dor/devops-leaders-course-v2

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

ENV key=value
EXPOSE 8000

ENV STRESS_TEST_FLAG=true
ENV STRESS_TEST_DURATION=60
