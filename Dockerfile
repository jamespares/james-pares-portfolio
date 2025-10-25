FROM nginx:alpine

# Copy static files to /public
COPY index.html /public/
COPY public/headshot.jpeg /public/
COPY styles.css /public/
COPY script.js /public/
COPY "James Pares CV.pdf" /public/

# Create nginx config to serve from /public
RUN echo 'server { \
    listen 80; \
    root /public; \
    index index.html; \
    location / { \
        try_files $uri $uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

