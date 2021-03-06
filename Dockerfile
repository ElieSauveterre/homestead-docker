FROM debian:wheezy
MAINTAINER Elie Sauveterre <contact@eliesauveterre.com>

# Install packages
ADD provision.sh /provision.sh
ADD serve.sh /serve.sh
ADD run.sh /run.sh

RUN chmod +x /*.sh

RUN ./provision.sh

EXPOSE 80 22 35729 9876
CMD ["/run.sh"]
