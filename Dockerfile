FROM python:3.10

WORKDIR /app

COPY . /app/

RUN python -m pip install --upgrade pip setuptools wheel
RUN python -m pip install --no-cache-dir --retries 10 --timeout 120 -r requirements.txt

CMD ["python3", "bot.py"]