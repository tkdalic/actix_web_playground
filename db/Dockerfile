FROM mysql/mysql-server:8.0

ENV MYSQL_DATABASE=actix_web_playground \
  MYSQL_USER=actix_web_playground \
  MYSQL_PASSWORD=secret \
  MYSQL_ROOT_PASSWORD=secret \
  TZ=Asia/Tokyo

COPY ./my.cnf /etc/mysql/conf.d/my.cnf
RUN chmod 644 /etc/mysql/conf.d/my.cnf