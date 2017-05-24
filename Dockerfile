FROM centos
MAINTAINER onion007@gmail.com

ADD *.sh /
ADD ssledge /ssledge

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/startup.sh"]
