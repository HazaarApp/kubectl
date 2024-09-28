# eks version
FROM alpine/k8s:1.28.14

LABEL maintainer="Rokhun Jung <j.rokhun@gmail.com>"

RUN apk add --update \
        coreutils \
        py-pip

RUN pip install awscli

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]