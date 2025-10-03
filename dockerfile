
FROM python:3.11-slim

WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy script
COPY telegram_scraper.py .

CMD ["python", "telegram_scraper.py"]
