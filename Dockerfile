# AlpineLinux with a glibc-2.21 and Oracle Java 8
FROM nirped/docker-hadoop-base

ADD bootstrap.sh /tmp/
RUN chmod 0744 /tmp/bootstrap.sh
RUN touch /tmp/.EMPTY

EXPOSE 50070

VOLUME  /var/hadoop/data/namenode


ENTRYPOINT /tmp/bootstrap.sh
