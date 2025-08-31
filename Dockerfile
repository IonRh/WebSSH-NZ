FROM jrohy/webssh

COPY main.sh /
ENV TZ=Asia/Shanghai
RUN chmod a+x main.sh
EXPOSE 8080/tcp
USER webssh

CMD ["./main.sh"]
