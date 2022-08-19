FROM nginx:stable-alpine
#维护者
LABEL maintainer=316149574@qq.com

# 工作目录， 进入容器 命令行默认的工作目录
WORKDIR /app

COPY . .
# 将当前项目文件中的文件拷贝到容器中的/app目录 
COPY  /app/public /usr/share/nginx/html

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]