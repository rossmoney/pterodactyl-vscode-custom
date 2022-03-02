FROM ghcr.io/parkervcp/yolks:nodejs_17

RUN apt update \
    && apt -y install texlive-full htop nano sudo

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]