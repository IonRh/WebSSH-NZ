FROM jrohy/webssh

WORKDIR /code/nezha/

RUN apk add --no-cache bash
COPY main.sh /
ENV TZ=Asia/Shanghai
RUN chmod a+x /main.sh
EXPOSE 5032/tcp
ENTRYPOINT ["/main.sh"]
