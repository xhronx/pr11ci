FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./index.html /usr/share/nginx/html

#WORKDIR /pr11ci

#VOLUME /pr11ci

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
