# Jacksum on Docker

## Prerequisites

Install Docker (testet on Ubuntu 24.04.1)

```
./install-docker.sh
```

## Downoad
```
docker pull jonelo/jacksum
```

See also https://hub.docker.com/r/jonelo/jacksum

## Usage

```
docker run jonelo/jacksum
```

get the entire help by typing

```
docker run jonelo/jacksum jacksum -h
```

See also https://github.com/jonelo/jacksum/wiki/Manpage

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


