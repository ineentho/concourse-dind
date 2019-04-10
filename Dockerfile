FROM alpine:3.9.3@sha256:97e225314fd094c1e16209c4f0ad8103af20a57d45153e5bcfa04f3a2dc50099

RUN apk --no-cache add bash docker

RUN mkdir -p /concourse-dind
WORKDIR /concourse-dind

COPY ./docker-image-resource/assets/common.sh common.sh
COPY ./dind-bash dind-bash

ENTRYPOINT ["/concourse-dind/dind-bash"]
