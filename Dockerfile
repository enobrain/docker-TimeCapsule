FROM alpine
RUN \
apk --no-cache --update add supervisor avahi && \
rm -rf /var/cache/apk/* 
RUN \
rm /etc/supervisord.conf && \
mkdir -p /etc/supervisor/conf.d && \
mkdir /var/log/supervisor && \
#rm -rf /etc/avahi/services/* && \
rm -f /etc/avahi/avahi-daemon.conf 
COPY avahi-daemon.conf /etc/avahi/avahi-daemon.conf

