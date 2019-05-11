FROM alpine:3.9.4@sha256:182aba30aabc7dc99ccbafbd8f4d0e1141f6f2763c38f4dedacb33a45a29f2c2

RUN apk --no-cache add bash docker

RUN mkdir -p /concourse-dind
WORKDIR /concourse-dind

COPY ./docker-image-resource/assets/common.sh common.sh
COPY ./dind-bash dind-bash

ENTRYPOINT ["/concourse-dind/dind-bash"]
