FROM node:8.11.3

# Install packages

RUN apt-get update && \
    apt-get install -y python-dev && \
    curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    pip install awscli

CMD [ "bash" ]