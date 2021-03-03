FROM nginx
MAINTAINER Florian Lambert <florian.lambert@cycloid.io>

RUN apt-get update && \
apt-get install git -y && \
rm -fr /var/cache/apk/* /var/lib/apt/lists/*

COPY scripts /
COPY wordpress /usr/share/nginx/html
WORKDIR /

ENTRYPOINT ["/entrypoint.sh"]
