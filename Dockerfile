FROM python:3.14.3

WORKDIR /app

COPY requirements-lock.txt .

RUN pip3 install -r requirements-lock.txt

COPY app ./app

RUN useradd --create-home --shell /usr/sbin/nologin appuser && chown -R appuser:appuser /app

USER appuser

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
