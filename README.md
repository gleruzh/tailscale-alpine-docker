# tailscale-alpine-docker
1. update docker.env with your values
2. update volume paths in compose file (create directories if needed)
3. up container

```
docker compose up -d tailscale
```
4. login to your server, for example

```
docker compose exec tailscale tailscale up --login-server http://headscale.thedomain.me --hostname=container123
```
5. enjoy