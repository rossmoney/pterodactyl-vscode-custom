FROM ghcr.io/parkervcp/yolks:nodejs_17

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt -y install texlive-full htop nano
