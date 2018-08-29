FROM busybox
LABEL maintainer="jesse <lampjesse@@163.com>" app="httpd"
ENV WEB_DOC_ROOT="/date/web/html/"
RUN mkdir -p $WEB_DOC_ROOT && \
    echo '<h1>Busybox httpd service</h1>' > ${WEB_DOC_ROOT}/index.html
CMD /bin/httpd -f -h ${WEB_DOC_ROOT}
