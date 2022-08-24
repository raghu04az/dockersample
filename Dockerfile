FROM nginx: latest
MAINTAINER raghu04az@gmail.com
RUN apt update
RUN apt install -y curl jq stress
COPY index.html /usr/share/nginx/html/
COPY error.html /usr/share/nginx/html/
COPY azurelogo.webp /usr/share/nginx/html/
COPY image1.jpg /usr/share/nginx/html/
COPY image2.jpg /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
