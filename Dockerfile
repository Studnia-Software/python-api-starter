FROM python:3.11-slim

# Ustaw zmienną środowiskową (lepsza obsługa Pythona w Dockerze)
ENV PYTHONUNBUFFERED=1

# Praca w katalogu /app
WORKDIR /app

# Kopiowanie plików zależności
COPY requirements.txt .

# Instalacja zależności
RUN pip install --no-cache-dir -r requirements.txt

# Skopiowanie kodu aplikacji
COPY app ./app

# Uruchomienie serwera FastAPI
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
