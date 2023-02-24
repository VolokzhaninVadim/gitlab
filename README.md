# Gitlab
![gitlab-logo-100.png](https://about.gitlab.com/images/press/logo/png/gitlab-logo-100.png)

# Docker (Ubuntu)
```
# Install packages for work with net
sudo apt install net-tools
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
# Install docker and docker-compose
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-compose
# Add user in docker group, that do not launch docker with sudo
sudo usermod -aG docker ${USER}
```

# Reset root user pasword
```
docker exec -it gitlab gitlab-rake "gitlab:password:reset[root]"
```

# Get .pem file from .key file (SSL)
```
sudo openssl rsa -in /home/volokzhanin/docker/private_cloud/proxy/certs/volokzhanin.duckdns.org.key -text > ./volokzhanin.duckdns.org.pem
```
