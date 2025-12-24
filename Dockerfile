FROM python:3.9-slim

WORKDIR /app

# Copier le fichier requirements.txt
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l'application
COPY . .

# Exposer le port Flask
EXPOSE 5000

# Variable d'environnement pour Flask
ENV FLASK_APP=app.py

# Commande de démarrage
CMD ["flask", "run", "--host=0.0.0.0"]
