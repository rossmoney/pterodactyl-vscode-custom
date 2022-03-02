FROM ghcr.io/parkervcp/yolks:nodejs_17

RUN apt-get update \
    && sudo apt-get -y install texlive-full htop nano

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]