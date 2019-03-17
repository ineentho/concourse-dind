FROM alpine:3.9.2

RUN apk --no-cache add bash docker

RUN mkdir -p /concourse-dind
WORKDIR /concourse-dind

COPY ./docker-image-resource/assets/common.sh common.sh
COPY ./dind-bash dind-bash

ENTRYPOINT ["/concourse-dind/dind-bash"]
