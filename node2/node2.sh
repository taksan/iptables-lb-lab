docker run -di --net lbnet0 --ip 11.11.11.8 -v$(pwd)/index.html:/usr/share/nginx/html/index.html:ro --name node2 nginx
