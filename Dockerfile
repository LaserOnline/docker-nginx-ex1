FROM nginx:latest
ENV TZ=Asia/Bangkok
ENV APPNAME angular-test
COPY angular-test /var/www/html/angular-test/
COPY conf.d/*.template /etc/nginx/templates/
HEALTHCHECK CMD curl --fail http://localhost:80
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
