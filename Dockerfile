FROM drakkan/sftpgo:latest

# 设置可靠的软件源并安装 curl
RUN echo "deb http://deb.debian.org/debian bookworm main" > /etc/apt/sources.list \
    && echo "deb http://deb.debian.org/debian-security bookworm-security main" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends curl \
    && rm -rf /var/lib/apt/lists/*

USER 1000:1000
WORKDIR /var/lib/sftpgo
CMD ["sftpgo", "serve"]
