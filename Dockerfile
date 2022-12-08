FROM nginx

RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./index.html /usr/share/nginx/html/index.html

# WORKDIR /

# VOLUME /var/log/nginx/log

# VOLUME /usr/share/nginx/html

# VOLUME /etc/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

# docker run --name nginx_11_con -p 80:9889 -d nginx_11_img
