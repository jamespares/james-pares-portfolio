FROM nginx:alpine

# Copy static files
COPY index.html /usr/share/nginx/html/
COPY headshot.jpeg /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY "James Pares CV.pdf" /usr/share/nginx/html/

# The video will be uploaded to the volume separately
# Volume should be mounted to /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

