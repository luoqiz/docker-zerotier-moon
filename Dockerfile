FROM spikhalskiy/zerotier-containerized:1.6.2

LABEL maintainer="seedgou <seedgou@gmail.com>"

#RUN ln -sf /zerotier-one /zerotier-idtool
COPY startup.sh /startup.sh
EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh"]