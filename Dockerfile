# Setup unbuntu in container, using latest fails with pip issue. Using v22.04 instead.
# FROM ubuntu:latest
FROM ubuntu:22.04
# Install python 3.10 and pip
RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git
#Install PyYAML
RUN pip3 install PyYAML
#Copy feed.py from repo into contaner path /usr/bin/
COPY feed.py /usr/bin/feed.py
#Copy entrypoint.sh from repo into contaner path /
COPY entrypoint.sh /entrypoint.sh
#running entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
