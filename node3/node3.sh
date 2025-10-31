docker run -di --net lbnet0 --ip 11.11.11.9 -v$(pwd)/index.html:/usr/share/nginx/html/index.html:ro --name node3 nginx
