FROM alpine:3.13

LABEL maintainer="woozymasta@gmail.com"

RUN apk add --update --no-cache \
    bash openssh-client git tar xz gzip bzip2 curl coreutils rsync openssl && \
    curl -sLo /usr/bin/kubectl \
    "https://storage.googleapis.com/kubernetes-release/release/v1.20.3/bin/linux/amd64/kubectl" && \
    curl -sLo /usr/bin/jq \
    "https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64" && \
    curl -sLo /usr/bin/yq \
    "https://github.com/mikefarah/yq/releases/download/v4.6.1/yq_linux_amd64" && \
    chmod +x /usr/bin/kubectl /usr/bin/jq /usr/bin/yq

ENTRYPOINT [ "/bin/bash" ]
