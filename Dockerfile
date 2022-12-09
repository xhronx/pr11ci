FROM nginx
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /usr/share/nginx/html
COPY ./default.conf /etc/nginx
VOLUME /usr/share/nginx/html
VOLUME /etc/nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]