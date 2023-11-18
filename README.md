# Gitlab
![gitlab-logo-100.png](https://about.gitlab.com/images/press/logo/png/gitlab-logo-100.png)

## Reset root user pasword
```
docker exec -it gitlab gitlab-rake "gitlab:password:reset[root]"
```

## Change gitlab version
```
# Get docker_id
sudo docker ps
# Execute
sudo docker stop [container-id]
sudo docker rm [container-id]
sudo docker-compose up --build
```

## Backup
For backup use [backup-server](https://github.com/VolokzhaninVadim/duplicati).