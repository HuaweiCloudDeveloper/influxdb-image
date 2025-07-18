#!/bin/bash

# 设置脚本在遇到错误时立即退出，避免错误情况继续执行后续步骤
set -e

# 定义常量，方便后续修改版本号和下载链接
DOCKER_VERSION="27.1.2"
DOCKER_DOWNLOAD_URL="https://mirrors.nju.edu.cn/docker-ce/linux/static/stable/aarch64/docker-${DOCKER_VERSION}.tgz"
DOCKER_COMPOSE_VERSION="v2.27.1"
DOCKER_COMPOSE_DOWNLOAD_URL="https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)"
SUPERSET_REPO="https://github.com/apache/superset"
SUPERSET_TAG="4.1.2"

# 步骤 1: 更新系统并安装必要的依赖
echo "开始更新系统并安装必要的依赖..."
sudo yum update -y
sudo yum install -y tar curl
echo "系统更新和依赖安装完成。"

# 步骤 2: 下载 Docker 二进制包
echo "开始下载 Docker 二进制包，版本为 ${DOCKER_VERSION}..."
wget -O /tmp/docker-${DOCKER_VERSION}.tgz $DOCKER_DOWNLOAD_URL
echo "Docker 二进制包下载完成。"

# 步骤 3: 解压并复制 Docker 二进制文件到 /usr/bin
echo "开始解压 Docker 二进制包..."
tar -xf /tmp/docker-${DOCKER_VERSION}.tgz -C /tmp/
echo "解压完成，开始复制 Docker 二进制文件到 /usr/bin..."
sudo cp /tmp/docker/* /usr/bin/
echo "Docker 二进制文件复制完成。"

# 步骤 4: 验证 docker 命令是否可用
echo "验证 docker 命令是否可用..."
which docker
echo "docker 命令验证完成。"

# 步骤 5: 编写 docker.service 文件
echo "开始编写 docker.service 文件..."
cat <<EOF | sudo tee /etc/systemd/system/docker.service
[Unit]
Description=Docker Application Container Engine
Documentation=https://docs.docker.com
After=network-online.target firewalld.service
Wants=network-online.target

[Service]
Type=notify
ExecStart=/usr/bin/dockerd
ExecReload=/bin/kill -s HUP \$MAINPID
LimitNOFILE=65535
LimitNPROC=65535
LimitCORE=65535
TimeoutStartSec=0
Delegate=yes
KillMode=process
Restart=on-failure
StartLimitBurst=3
StartLimitInterval=60s

[Install]
WantedBy=multi-user.target
EOF
echo "docker.service 文件编写完成。"

# 步骤 6: 重新加载 systemd 配置并启动 Docker 服务
echo "重新加载 systemd 配置..."
sudo systemctl daemon-reload
echo "启动 Docker 服务..."
sudo systemctl start docker.service
echo "设置 Docker 服务开机自启..."
sudo systemctl enable docker.service
echo "Docker 服务启动和自启设置完成。"

# 步骤 7: 配置 Docker 镜像加速器及日志管理
echo "开始配置 Docker 镜像加速器及日志管理..."
mkdir -p /etc/docker
cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "registry-mirrors": ["https://docker.m.daocloud.io"],
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "10m",
    "max-file": "3"
  }
}
EOF
echo "Docker 镜像加速器及日志管理配置完成。"

# 步骤 8: 重新加载 Docker 配置并重启 Docker 服务
echo "重新加载 Docker 配置..."
sudo systemctl daemon-reload
echo "重启 Docker 服务..."
sudo systemctl restart docker
echo "Docker 服务重启完成。"

# 拉取InfluxDB镜像
docker pull influxdb:2.7.1

# 运行容器（默认端口8086）
docker run -d -p 8086:8086 --name influxdb --restart=always influxdb:2.7.1