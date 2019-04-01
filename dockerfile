FROM anapsix/alpine-java

ADD target/microcommerce-0.0.1-SNAPSHOT.jar /app/microcommerce.jar

ENTRYPOINT exec java -jar -Dspring.profiles.active=${PROFILE} /app/microcommerce.jar

EXPOSE 80