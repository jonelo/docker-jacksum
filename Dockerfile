FROM debian:latest
ARG version

RUN apt-get update \
 && apt-get install -y locales \
 && apt-get install -y openjdk-11-jre-headless \
 && rm -rf /var/lib/apt/lists/* \
 && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.utf8
ENV VERSION=$version

WORKDIR /opt/jacksum
COPY ./jacksum-${VERSION}.jar ./jacksum ./
RUN ln -s /opt/jacksum/jacksum /usr/bin/jacksum

RUN mkdir -p /VOLUME
WORKDIR /VOLUME

CMD ["jacksum"]
