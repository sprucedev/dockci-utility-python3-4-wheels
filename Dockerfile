FROM alpine:3.2

RUN apk add --update \
    ca-certificates gcc musl-dev \
    python3=3.4.3-r2 python3-dev=3.4.3-r2 \
    && rm -rf /var/cache/apk/*
RUN easy_install-3.4 pip==7.1.2 wheel==0.26.0

WORKDIR /work

CMD ["pip", "wheel", "-r", "requirements.txt"]
