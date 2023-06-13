# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

# Cria e entra em uma pasta dentro do container
WORKDIR /app
ENV FLASK_APP run.py

# Copia para o arquivo no container (requirements.txt) o arquivo local requirements.txt
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Copia para o diretório atual do container (/app) tudo que está no diretório local
COPY . .

# Rodar comandos
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]