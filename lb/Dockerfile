FROM alpine:latest
RUN apk update && apk add iptables 


ADD lb*.sh /opt/

CMD ["/bin/sh", "-c", "sleep infinity"]
