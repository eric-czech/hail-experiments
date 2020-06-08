FROM python:3.6.9-slim-stretch
RUN mkdir -p /usr/share/man/man1 && \
    apt-get update && apt-get install -y \
    openjdk-8-jre-headless \
    && rm -rf /var/lib/apt/lists/* && \
    pip3 --no-cache-dir install hail jupyterlab seaborn 
RUN mkdir /work /work/repos /work/data
WORKDIR /work
CMD jupyter lab --allow-root --ip=0.0.0.0 --port=8888 --no-browser
