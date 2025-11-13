FROM alpine:latest
RUN apk update && apk add iptables 

COPY --chmod=a+x lb*.sh /opt/

CMD ["/bin/sh", "-c", "sleep infinity"]
