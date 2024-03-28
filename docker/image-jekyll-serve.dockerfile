FROM jekyll as jekyll-serve

COPY image-entrypoint.sh /usr/local/bin/
ENTRYPOINT [ "bash", "image-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]