FROM eclipse-temurin:21
ARG version

ENV VERSION=$version

WORKDIR /opt/jacksum
COPY ./jacksum-${VERSION}.jar ./jacksum ./
RUN ln -s /opt/jacksum/jacksum /usr/bin/jacksum

RUN mkdir -p /VOLUME
WORKDIR /VOLUME

CMD ["jacksum"]
