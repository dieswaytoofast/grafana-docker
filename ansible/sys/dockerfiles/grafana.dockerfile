FROM grafana/grafana:3.1.0

### COMMON FOR ALL CONTAINERS

## Pass in params to configure MIE apps
# DB
ARG GRAFANA_DB_HOST
ARG GRAFANA_DB_PORT
ENV GRAFANA_DB_HOST $GRAFANA_DB_HOST
ENV GRAFANA_DB_PORT $GRAFANA_DB_PORT
# ES
ARG GRAFANA_PORT
ENV GRAFANA_PORT $GRAFANA_PORT
# NGINX
ARG GRAFANA_NGINX_PORT_HTTP
ENV GRAFANA_NGINX_PORT_HTTP $GRAFANA_NGINX_PORT_HTTP
ARG GRAFANA_NGINX_PORT_HTTPS
ENV GRAFANA_NGINX_PORT_HTTPS $GRAFANA_NGINX_PORT_HTTPS

### END COMMON FOR ALL CONTAINERS ###

COPY grafana/grafana.ini /etc/grafana/grafana.ini

ADD grafana/keys /etc/grafana/keys/

EXPOSE $GRAFANA_PORT