FROM resin/rpi-raspbian
MAINTAINER Yannick Forget
RUN echo "deb http://mirrordirector.raspbian.org/raspbian/ stretch main contrib non-free rpi" >> /etc/apt/sources.list
RUN apt-get update && apt-get upgrade && apt-get install nginx nano
EXPOSE 80 443
# Append "daemon off;" to the configuration file
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD ["/etc/init.d/nginx", "start"]
