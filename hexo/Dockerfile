FROM mhart/alpine-node

WORKDIR /hexo

RUN apk add --update --no-cache git openssh

RUN npm install hexo-cli -g && \
    hexo init . && \
    npm install && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

RUN rm -rf /hexo/source /hexo/themes /hexo/_config.yml && \
    mkdir -p /mnt/source /mnt/themes && \
    ln -s /mnt/source /hexo/source && \
    ln -s /mnt/themes /hexo/themes && \
    ln -s /mnt/_config.yml /hexo/_config.yml

RUN npm install --save hexo-renderer-jade && \
    npm install --save hexo-deployer-git && \
    npm install --save hexo-deployer-shell && \
    npm install --save hexo-neat && \
    npm install --save hexo-offline

VOLUME ["/mnt","~/.ssh"]

ADD entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["sh", "entrypoint.sh"]
