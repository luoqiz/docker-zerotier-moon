FROM luoqiz/zerotier-container

LABEL maintainer="luoqiz <luoqiangzheng@gmail.com>"

RUN apt-get update &&  apt-get install -y procps

COPY startup.sh /startup.sh
EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh"]
