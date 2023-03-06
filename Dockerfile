FROM debian:bullseye-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    git \
    cmake \
    g++ \
    libevent-dev \
    libssl-dev \
    libcurl4-gnutls-dev \
    libavutil-dev \
    libavformat-dev \
    libavcodec-dev \
    libavfilter-dev \
    libswresample-dev \
    libswscale-dev \
    libopenimageio-dev \
    libgeographic-dev \
    libcairo2-dev \
    libopenexr-dev \
    && rm -rf /var/lib/apt/lists/* \
    && git clone https://github.com/progweb/gpx2video.git \
    && mkdir gpx2video/build \
    && cd gpx2video/build \
    && cmake .. \
    && make \
    && ln -s ../assets assets

WORKDIR /app/gpx2video/build

ENTRYPOINT [ "/app/gpx2video/build/gpx2video" ]
CMD [ "-h" ]
