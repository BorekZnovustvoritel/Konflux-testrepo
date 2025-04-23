ARG ALPINE_TAG=3.10

FROM alpine:${ALPINE_TAG} AS build
RUN echo "foo"

FROM build AS test
RUN echo "foo"

FROM scratch
COPY --from=build --chown=nobody:nobody abc .
RUN echo "foo"

FROM registry.access.redhat.com/ubi9/ubi:latest
CMD ["echo hi"]
