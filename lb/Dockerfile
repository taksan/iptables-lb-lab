FROM alpine:latest
RUN apk update && apk add iptables 

COPY lb*.sh /opt/

CMD ["/bin/sh", "-c", "sleep infinity"]
