FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="MERGEX Developers <dev@mergex.org>"
LABEL description="Dockerised MERGEX, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /mergex

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} mergex
RUN useradd -u ${USER_ID} -g mergex -s /bin/bash -m -d /mergex mergex
RUN mkdir /mergex/.mergex
RUN chown mergex:mergex -R /mergex

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER mergex

VOLUME ["/mergex"]

EXPOSE 4490 9999 23381 23380

WORKDIR /mergex
