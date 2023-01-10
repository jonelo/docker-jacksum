#!/usr/bin/env bash

usage() {
cat << END
update <version>

    <version> means the latest version of Jacksum.
END
    exit 1
}

case $# in
    1) VERSION="$1"
       ;;
    *) usage
       ;;
esac

curl -o jacksum-${VERSION}.jar -L https://github.com/jonelo/jacksum/releases/download/v${VERSION}/jacksum-${VERSION}.jar

update_property docker.conf VERSION ${VERSION}

java -jar jacksum-${VERSION}.jar -v
