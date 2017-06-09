FROM nginx:stable
COPY bin/confd /usr/local/bin/confd
COPY bin/run.sh /run.sh
COPY confd /etc/confd
