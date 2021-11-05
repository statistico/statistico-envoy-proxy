FROM envoyproxy/envoy:v1.17.0

COPY ./envoy.yaml /tmpl/envoy.yaml.tmpl
COPY docker-entrypoint.sh /

RUN chmod 500 /docker-entrypoint.sh

RUN apt-get update && \
    apt-get install gettext -y

EXPOSE 8080
EXPOSE 9900

ENTRYPOINT ["/docker-entrypoint.sh"]
