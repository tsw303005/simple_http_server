From python:3.8.10-slim

ENV SIMPLE_HTTP_SERVER /simple_http_server

RUN apt update && apt install -y --no-install-recommends \
    curl \
    wget \
    git \
    python3-pip

RUN git clone https://github.com/tsw303005/simple-http-server.git ${SIMPLE_HTTP_SERVER}
RUN pip3 install --upgrade pip
RUN pip install Flask

WORKDIR ${SIMPLE_HTTP_SERVER}

CMD python3 app.py
