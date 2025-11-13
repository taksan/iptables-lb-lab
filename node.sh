#!/bin/sh

NODE_NUM=${1:?}
IP=$((6+NODE_NUM))

docker run -d --net lbnet0 \
  --ip 11.11.11.${IP} \
  --hostname node${NODE_NUM} \
  -v./31-create-index.sh:/docker-entrypoint.d/31-create-index.sh \
  --rm --name node${NODE_NUM} nginx
