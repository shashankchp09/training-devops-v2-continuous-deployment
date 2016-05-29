# DevOps Training - Jenkins & XL Deploy - Practical / Usage - using Docker compose

# 1 - Preparation (you can be offline after this step)

## 1.1 - Clone the repository locally
```
git clone https://github.com/ykandrirody/training-devops-v2-continuous-deployment.git
```

## 1.2 - Pull and build the Docker containers
```
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml pull
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml build
```

## 1.3 - Install Flash 
If needed, install flash ( needed by XL Deploy ) using :
```
sudo apt-get install flashplugin-installer
```

## 1.4 - Get a licence key for XL Deploy
Subscribe here to get a free 30 day trial :
https://xebialabs.com/products/xl-deploy/trial/

# 2 - Start the practical

## 2.1 - Start all services

```
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml up -d
```

##  2.2 - Connect to Jenkins :
http://localhost:8080/

##  2.3 - Connect to XL Deploy :
http://localhost:4516/

Use this credentials to connect to your XL Deploy :
admin
password

Use this credentials to connect to your Gogs :
root
password

## 3 - Do the training

Follow the course materials.

Check at the end : 
```
docker exec xldeploy ls -ae /dpl
docker exec xldeploy cat /dpl/README.md
```

## 4 - Deallocate resources

Stop all containers :
```
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml kill
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml rm -f -v -a
```
