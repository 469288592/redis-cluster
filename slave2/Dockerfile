FROM redis:5.0.4
MAINTAINER shaobo.zheng <shaobo.zheng@xuncetech.com>
COPY redis.conf /data/redis.conf
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo 'Asia/Shanghai' >/etc/timezone \
  && chmod 755 /data/redis.conf
EXPOSE 6381 16381
VOLUME ["/data"] 
CMD [ "redis-server", "/data/redis.conf" ]
