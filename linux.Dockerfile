FROM lacledeslan/steamcmd:linux AS zomboid-downloader

RUN echo "\n\nDownloading Project Zomboid Dedicated Server via SteamCMD"; \
        mkdir --parents /output; \
        /app/steamcmd.sh +force_install_dir /output +login anonymous +app_update 380870 validate +quit;

COPY ./dist/linux /output


#---------------------------------
FROM debian:trixie-slim

ARG BUILD_DATE=unspecified \
    BUILD_NODE=unspecified \
    GIT_REVISION=unspecified

HEALTHCHECK NONE

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LD_LIBRARY_PATH=/app/jre64/lib

LABEL architecture="amd64" \
      com.lacledeslan.build-node="$BUILD_NODE" \
      maintainer="Laclede's LAN <contact@lacledeslan.com>" \
      org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.description="Project Zomboid Dedicated Server" \
      org.opencontainers.image.revision="$GIT_REVISION" \
      org.opencontainers.image.source="https://github.com/LacledesLAN/gamesvr-pzomboid" \
      org.opencontainers.image.vendor="Laclede's LAN"

RUN dpkg --add-architecture i386 && \
    apt-get update && apt-get install -y \
        ca-certificates expect locales locales-all tini && \
    apt-get clean && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*;

# Setup Environment
RUN useradd --home /app --gid root --system zomboid &&\
    mkdir --parents /app/Zomboid/mods && \
    chown -R zomboid:root /app/Zomboid;

COPY --chown=zomboid:root --from=zomboid-downloader /output /app

RUN chmod +x /app/ll-scripts/* /app/ll-tests/*.sh;

USER zomboid

WORKDIR /app

CMD ["/bin/bash"]

ONBUILD USER root
