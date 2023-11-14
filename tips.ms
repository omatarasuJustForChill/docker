```bash
docker rm -f $(docker ps -a -q)
```

```bash
docker rmi -f $(docker images -a -q)
```