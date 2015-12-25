FROM debian:jessie

RUN apt-get update -q
RUN apt-get upgrade -qy
RUN apt-get install -qy tor
ADD torrc /etc/tor/torrc

CMD /usr/bin/tor
