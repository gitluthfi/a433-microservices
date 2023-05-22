#!/bin/bash

# Perintah untuk membuat Docker image
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image
docker tag item-app:v1 luthfi247/item-app:v1

# Login ke Docker Hub
docker login

# Mengunggah image ke Docker Hub
docker push luthfi247/item-app:v1