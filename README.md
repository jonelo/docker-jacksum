# Jacksum on Docker

## Download

Go to https://hub.docker.com/r/jonelo/jacksum

## Update, Build, Deploy

### Update jacksum.jar

Update to the latest Jacksum release.

```
./update.sh 3.7.0
```

Note: `update.sh` requires `update_property` from https://github.com/jonelo/bashberries/

### Build the Docker image

```
./build.sh
```

### Deploy on Docker Hub

```
./deploy.sh
```


