FROM resin/rpi-raspbian:jessie
MAINTAINER Lars Larsson "lars.martin.larsson@gmail.com"
RUN apt-get update
ADD influxdb_0.9.5-151130_armhf.deb .
RUN dpkg -i influxdb_0.9.5-151130_armhf.deb
ADD config.toml /config/config.toml
EXPOSE 8083
EXPOSE 8086
VOLUME ["/data"]
CMD /usr/bin/influxd -config /config/config.toml
