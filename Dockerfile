FROM nginx


RUN rm -rf /etc/nginx/nginx.conf \
    && rm -rf /usr/share/nginx/html/index.html \
    && rm -rf /etc/nginx/conf.d/default.conf


COPY nginx.conf /etc/nginx/nginx.conf
COPY static/ /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/
COPY asset-manifest.json /usr/share/nginx/html/

CMD ["sleep","10000000"]



