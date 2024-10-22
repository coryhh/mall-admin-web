# 使用官方的 Node.js 运行时作为父镜像
FROM node:12.14.0

# 设置工作目录
WORKDIR /app

# 将项目文件复制到工作目录中
COPY . .

# # 设置代理
# RUN npm config set registry http://registry.npm.release.ctripcorp.com

# RUN npm config set proxy ntproxy.qa.nt.ctripcorp.com:8080
# RUN npm config set https-proxy ntproxy.qa.nt.ctripcorp.com:8080

# 安装项目依赖
RUN npm install

# 将端口暴露给 Docker 容器
EXPOSE 8090

# 运行 npm run dev 命令来启动应用
CMD ["npm", "run", "dev"]
