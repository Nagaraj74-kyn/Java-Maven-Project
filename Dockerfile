FROM alpine:3.18

RUN adduser -D appuser

USER appuser

EXPOSE 8080

RUN ls 

ENV APP_HOME /usr/src/app

COPY app/*.jar $APP_HOME/app.jar

WORKDIR /app

CMD ["java", "-jar", "app.jar"]
