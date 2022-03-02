FROM ghcr.io/parkervcp/yolks:nodejs_17

RUN apk --update --no-cache add texlive-full htop nano

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]