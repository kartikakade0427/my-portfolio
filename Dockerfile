FROM nginx:alpine

COPY public/ /usr/share/nginx/html/

EXPOSE 80

# Health check to verify Nginx is serving traffic
HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD wget -q -O - http://localhost:80 || exit 1

CMD ["nginx", "-g", "daemon off;"]

