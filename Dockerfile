FROM python:3.11-slim

RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir python-docx openai

WORKDIR /app

ENTRYPOINT ["/bin/bash"]