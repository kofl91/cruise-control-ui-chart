FROM nginxinc/nginx-unprivileged:1.20
WORKDIR /tmp
USER root
RUN curl -o /tmp/ccui.tar.gz -L https://github.com/linkedin/cruise-control-ui/releases/download/v0.3.4/cruise-control-ui-0.3.4.tar.gz
RUN tar xf /tmp/ccui.tar.gz
RUN mv /tmp/cruise-control-ui/dist/* /usr/share/nginx/html
RUN rm -rf /tmp/*
USER nginx
EXPOSE 8080