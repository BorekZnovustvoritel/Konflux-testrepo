FROM registry.access.redhat.com/ubi8/ubi:latest

COPY entrypoint.sh /

RUN echo hi

ENTRYPOINT ["/entrypoint.sh"]
