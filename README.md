# Jacksum on Docker

## Prerequisites

### Docker

Install Docker (testet on Ubuntu 24.04.1)

```
./install-docker.sh
```

> [!INFO]
> Credits: https://linuxiac.com/how-to-install-docker-on-ubuntu-24-04-lts/

### update_property

Get a copy of `update_property` from https://github.com/jonelo/bashberries/


## Download
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

> [!NOTE]
> `update.sh` requires `update_property`. See also the section Prerequisites.

### Build the Docker image

```
./build.sh
```

### Deploy on Docker Hub

```
./deploy.sh
```
