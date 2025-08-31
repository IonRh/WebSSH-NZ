FROM jrohy/webssh

RUN apk add --no-cache bash

COPY main.sh /
ENV TZ=Asia/Shanghai
RUN chmod a+x main.sh
EXPOSE 8080/tcp
USER webssh

CMD ["./main.sh"]
