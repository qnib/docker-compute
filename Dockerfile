FROM qnib/slurmd

RUN yum update-minimal -y
RUN yum install -y numactl-libs
RUN yum install -y libpciaccess
RUN yum install --downloadonly -y openmpi-devel
RUN cd /var/cache/yum/x86_64/20/fedora/packages \
 && rpm -i *
RUN cd /var/cache/yum/x86_64/20/updates/packages \
 && rpm -i *
 ENV PATH=${PATH}:/usr/lib64/openmpi/bin/
RUN rm -f /etc/supervisord.d/rsyslog_conf.ini \
    /etc/supervisord.d/rsyslog.ini \
    /etc/supervisord.d/diamond.ini \
    /etc/supervisord.d/sensu-api.ini \
    /etc/supervisord.d/sensu-client.ini \
    /etc/supervisord.d/sensu-server.ini \
    /etc/supervisord.d/watchpsutil.ini
