# Easy mode

First, start up using docker compose:

```shell
docker compose up --build -d
```

That's it, the load balancer is ready, just test it, running curl as many times as you want:

```shell
curl http://localhost:27017
```

Finish running:

```shell
docker compose down -v
```
