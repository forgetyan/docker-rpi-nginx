FROM forgetyan/rpi-raspbian
MAINTAINER Yannick Forget
RUN apt-get install nginx
EXPOSE 80 443
# Append "daemon off;" to the configuration file so it doesn't run as background service
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD ["/etc/init.d/nginx", "start"]
