FROM nginx:alpine


COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html/
RUN rm -f /etc/nginx/sites-enabled/*
RUN chown -R nginx /usr/share/nginx/html/pages/assets/

EXPOSE 80

# Start Script
ADD container_start.sh /start.sh
CMD /bin/sh /start.sh
