#!/usr/bin/env sh

mv /var/lib/tor /tmp/tor
ln -s /tmp/tor /var/lib/tor
service tor start
sleep 1
tail -f /var/log/tor/log
