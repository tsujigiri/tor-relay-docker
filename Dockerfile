FROM debian:jessie
RUN apt-get update -q
RUN apt-get upgrade -qy
RUN apt-get install -qy tor
ADD torrc /etc/tor/torrc
ADD startup.sh /startup.sh
EXPOSE 9001 9030
ENTRYPOINT /startup.sh
