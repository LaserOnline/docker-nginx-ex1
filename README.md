![Logo](https://blog.harveydelaney.com/content/images/size/w2000/2018/03/nginx-docker.png)


## Docker CMD

Docker Compose

```bash
  docker compose up -d
```
    
---
## Nginx 
Nginx .conf
```bash
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    server_name localhost;

    index index.html index.htm;

    location /angular-test/ {
        try_files $uri $uri/ /index.html;
    }
}
```
---

## PATH Angular
```bash
  localhost:9000/angular-test/ 
```