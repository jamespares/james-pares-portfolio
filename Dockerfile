FROM nginx:alpine

# Copy static files
COPY index.html /usr/share/nginx/html/
COPY public/headshot.jpeg /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY "James Pares CV.pdf" /usr/share/nginx/html/
COPY public/intro-video.MP4 /usr/share/nginx/html/intro-video.mp4

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

