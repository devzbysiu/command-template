# syntax=docker/dockerfile:1.4
FROM rustembedded/cross:armv7-unknown-linux-gnueabihf-0.1.16
ARG REPO_ROOT="empty"
ENV REPO_ROOT "${REPO_ROOT}"
COPY --from=rutils . /rutils
COPY --from=cmdhub . /cmdhub
COPY --from=cmdhub-macros . /cmdhub-macros
