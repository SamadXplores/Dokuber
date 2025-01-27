# Basis-Image
FROM python:3.9-slim

#Arbeitsverzeichnis erstellen
WORKDIR /app

#Abhängigkeiten installieren
Copy requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#App-code kopieren
COPY . .

#Port freigeben
EXPOSE 5000

#Startbefehl
CMD ["python", "app.py"]
