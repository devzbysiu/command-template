# syntax=docker/dockerfile:1.4
FROM rustembedded/cross:armv7-unknown-linux-gnueabihf-0.1.16
COPY --from=rutils . /rutils
COPY --from=cmdhub . /cmdhub
COPY --from=cmdhub-macros . /cmdhub-macros
