#!/bin/bash

# Perintah untuk membuat Docker image
docker build -t luthfi247/karsajobs_ui:latest .

# Login ke Docker Hub
docker login

# Mengunggah image ke Docker Hub
docker push luthfi247/karsajobs_ui:latest
