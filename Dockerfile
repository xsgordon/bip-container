# docker run --rm -it \
#	-v "${HOME}/.bip:/home/bip/.bip" \
#	--name bip \
#	xsgordon/bip "$@"

FROM fedora:latest
LABEL maintainer "Steve Gordon <stephen.a.gordon@gmail.com>"

RUN dnf update -y && dnf install -y bip && dnf clean all
RUN mkdir -p /home/bip/.bip \
    && chown -R bip:bip /home/bip

USER bip

ENTRYPOINT ["/usr/bin/bip"]
