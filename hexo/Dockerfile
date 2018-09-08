FROM mhart/alpine-node

WORKDIR /hexo

RUN apk add --update --no-cache git openssh

RUN npm install hexo-cli -g && \
    hexo init . && \
    npm install && \
    rm -rf /hexo/source /hexo/themes /hexo/_config.yml && \
    mkdir -p /mnt/source /mnt/themes /mnt/public && \
    ln -s /mnt/source /hexo/source && \
    ln -s /mnt/themes /hexo/themes && \
    ln -s /mnt/public /hexo/public && \
    ln -s /mnt/_config.yml /hexo/_config.yml && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

RUN npm install --save hexo-renderer-jade && \
    npm install --save hexo-deployer-git && \
    npm install --save hexo-deployer-shell && \
    npm install --save hexo-neat && \
    npm install --save hexo-offline

VOLUME ["/mnt","~/.ssh"]

ENTRYPOINT ["hexo"]
CMD ["g"]
