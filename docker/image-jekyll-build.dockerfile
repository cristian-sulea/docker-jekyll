FROM jekyll as jekyll-build

COPY image-entrypoint.sh /usr/local/bin/
ENTRYPOINT [ "bash", "image-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "build" ]
