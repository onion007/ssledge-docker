FROM centos
MAINTAINER onion007@gmail.com

ADD *.sh /
RUN mkdir /ssledge
ADD ssledge /ssledge

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/startup.sh"]
