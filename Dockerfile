FROM ubuntu:latest
RUN apt-get update \
    apt-get install \
    python3.10 \
    pythin3-pip \
RUN pip3 install PyYAML
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

