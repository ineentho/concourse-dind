FROM alpine:3.9.2@sha256:644fcb1a676b5165371437feaa922943aaf7afcfa8bfee4472f6860aad1ef2a0

RUN apk --no-cache add bash docker

RUN mkdir -p /concourse-dind
WORKDIR /concourse-dind

COPY ./docker-image-resource/assets/common.sh common.sh
COPY ./dind-bash dind-bash

ENTRYPOINT ["/concourse-dind/dind-bash"]
