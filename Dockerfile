FROM alpine:latest

LABEL maintainer="Jon LaBelle <contact@jonlabelle.com>" \
      description="Minimal Docker image with various network tools pre-installed." \
      org.label-schema.url="https://hub.docker.com/r/jonlabelle/network-tools" \
      org.label-schema.vcs-url="https://github.com/jonlabelle/docker-network-tools" \
      org.label-schema.vcs-type="Git"

RUN apk -U upgrade && apk add --no-cache \
    ca-certificates \
    libressl \
    curl \
    net-tools \
    iputils \
    macchanger \
    fping \
    ngrep \
    nmap nmap-scripts \
    netcat-openbsd \
    bind-tools \
    nload \
    tcpdump \
    wget \
    jq \
    ipcalc \
    iperf \
    && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
