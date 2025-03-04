FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y build-essential libssl-dev libffi-dev python3-dev python3.10 python3-pip git && \
    pip3 install --upgrade pip && \
    pip3 install PyYAML && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

