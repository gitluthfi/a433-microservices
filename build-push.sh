#!/bin/bash

# Perintah untuk membuat Docker image
docker build -t luthfi247/order-service:v1 .

# Melihat daftar image di lokal
docker images

# Login ke Docker Hub
docker login

# Mengunggah image ke Docker Hub
docker push luthfi247/order-service:v1