FROM nginx

# Install ping
RUN apt-get update && \
    apt-get install -y iputils-ping

COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
