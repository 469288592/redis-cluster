FROM redis:5.0.4
MAINTAINER shaobo.zheng <shaobo.zheng@xuncetech.com>
ENV DEBIAN_FRONTEND noninteractive
ADD docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN apt-get -y update \
  && apt-get -y upgrade \
  && apt-get -y --no-install-recommends install ruby \
  && gem install redis \
  && apt-get -y autoremove \
  && apt-get -y clean \
  && chmod 755 /usr/local/bin/redis-trib.rb \
  && chmod +x /usr/local/bin/docker-entrypoint.sh
WORKDIR /usr/local/bin
ENTRYPOINT ["docker-entrypoint.sh"]
