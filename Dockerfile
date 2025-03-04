FROM ubuntu:latest

# Update package list and install necessary packages
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git \
    python3-yaml

# Install PyYAML
RUN pip3 install PyYAML

# Copy the feed.py script to /usr/bin/
COPY feed.py /usr/bin/feed.py

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
