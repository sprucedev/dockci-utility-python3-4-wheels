FROM alpine:3.2

RUN apk add --update ca-certificates python3=3.4.3-r2 && rm -rf /var/cache/apk/*
RUN easy_install-3.4 pip==7.1.0

RUN adduser -D -h /work work
USER work
WORKDIR /work

CMD ["pip", "wheel", "-r", "requirements.txt"]
