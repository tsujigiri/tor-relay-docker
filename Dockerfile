FROM debian:jessie

RUN apt-get update -q
RUN apt-get upgrade -qy
RUN apt-get install -qy tor
ADD torrc /etc/tor/torrc

EXPOSE 9001 9030

CMD /usr/bin/tor
