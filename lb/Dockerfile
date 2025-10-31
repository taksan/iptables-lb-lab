FROM alpine:latest
RUN apk update && apk add iptables 


ADD lb.sh /opt/lb.sh

CMD ["/bin/sh", "-c", "sleep infinity"]
