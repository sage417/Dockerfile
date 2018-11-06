#! /bin/bash
hexo g && \
rm -rf /var/www/html/* && \
\cp -fr ./public/* /var/www/html/ && \
echo 'copy complete'
