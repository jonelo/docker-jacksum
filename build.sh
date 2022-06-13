#!/usr/bin/env bash
# author: Johann N. Loefflmann, https://johann.loefflmann.net

# source the environment variables
source docker.conf

# Download latest jacksum.jar
FILE="jacksum-${VERSION}.jar"
if [ ! -f "$FILE" ]; then
    printf "Downloading %s ...\n" "$FILE"
    curl -L -o jacksum-${VERSION}.jar "https://github.com/jonelo/jacksum/releases/download/v${VERSION}/jacksum-${VERSION}.jar"
    ls -ld $FILE
else
    printf "Version %s already available locally. Skipping download.\n" "${VERSION}"
fi

# Create jacksum launcher
printf "#!/bin/bash\njava -jar /opt/jacksum/jacksum-%s.jar \"\$@\"\n" "$VERSION" > jacksum

# remove any older images
docker image remove "$IMAGE_NAME:$VERSION"

# Build docker image
docker build -t "$IMAGE_NAME:$VERSION" -t "$IMAGE_NAME:latest" --build-arg version="$VERSION" .

# Test
docker container run -v /:/VOLUME --rm jonelo/jacksum:latest jacksum --header -a sha3-512 -C bsd /VOLUME/$(pwd)/jacksum-${VERSION}.jar
