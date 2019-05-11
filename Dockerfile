FROM alpine:3.9.4@sha256:af81cd1fdbc8216e7a1d4e116dd6a2889315d3793c435ba8bb2344a39bc3c46c

RUN apk --no-cache add bash docker

RUN mkdir -p /concourse-dind
WORKDIR /concourse-dind

COPY ./docker-image-resource/assets/common.sh common.sh
COPY ./dind-bash dind-bash

ENTRYPOINT ["/concourse-dind/dind-bash"]
