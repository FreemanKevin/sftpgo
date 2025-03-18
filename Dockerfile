FROM drakkan/sftpgo:latest

# 安装 curl
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*

# 保持原有入口点和用户设置
USER 1000:1000
WORKDIR /var/lib/sftpgo
CMD ["sftpgo", "serve"]
