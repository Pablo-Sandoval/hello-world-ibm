FROM nginx:alpine
RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf \
 && sed -i 's/listen  \[::\]:80;/listen  [::]:8080;/' /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8080
