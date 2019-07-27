# [Sentinel](https://github.com/alibaba/Sentinel) Docker 镜像

## 运行容器

```bash
docker run -d --name sentinel -p 8080:8080 \
-e SENTINEL_DASHBOARD_USERNAME=sentinel \
-e SENTINEL_DASHBOARD_PASSWORD=sentinel \
-e SERVER_PORT=8080 \
wangjin252/sentinel:latest
```

## 环境变量

- SENTINEL_DASHBOARD_USERNAME 用户名，默认：sentinel
- SENTINEL_DASHBOARD_PASSWORD 密码，默认：sentinel
- SERVER_PORT 监听端口，默认：8080
