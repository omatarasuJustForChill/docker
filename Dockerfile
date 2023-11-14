FROM alpine
RUN apk update && apk add nginx && rm /etc/nginx/http.d/default.conf
ADD server.conf /etc/nginx/http.d/
ADD index.html /var/lib/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]