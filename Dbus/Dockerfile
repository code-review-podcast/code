FROM python:3
COPY requirements.txt ./
RUN apt update && \
    apt install -y dbus-x11 libgirepository1.0-dev libgtk-3-dev && \
    rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir -r requirements.txt

