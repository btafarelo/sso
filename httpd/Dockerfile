FROM httpd:2.4

RUN apt update && \
apt install -y libapache2-mod-auth-openidc && \
apt clean

COPY auth_openidc.conf /etc/apache2/mods-available/
COPY httpd.conf /usr/local/apache2/conf/
    