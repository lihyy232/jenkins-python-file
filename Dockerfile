# Hello World Dockerfile
FROM alpine:latest

# 设置工作目录
WORKDIR /app

# 创建一个简单的Shell脚本
RUN echo '#!/bin/sh' > hello.sh && \
    echo 'echo "===================================="' >> hello.sh && \
    echo 'echo "  Hello World from Docker! 🐳"' >> hello.sh && \
    echo 'echo "  Time: $(date)"' >> hello.sh && \
    echo 'echo "  Hostname: $(hostname)"' >> hello.sh && \
    echo 'echo "  Jenkins Build: $BUILD_NUMBER"' >> hello.sh && \
    echo 'echo "===================================="' >> hello.sh && \
    chmod +x hello.sh

# 运行脚本
CMD ["/app/hello.sh"]
