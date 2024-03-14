FROM timberio/vector:0.28.1-alpine
ENV DEBIAN_FRONTEND=noninteractive
RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

COPY ./vector.yml /etc/vector/vector.yml
