FROM timberio/vector:0.28.1-alpine
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/* /tmp/*


COPY ./vector.yml /etc/vector/vector.yml
