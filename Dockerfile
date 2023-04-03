FROM openjdk:17
EXPOSE 8080
ADD target/ci-cd-springboot-app.jar ci-cd-springboot-app
ENTRYPOINT ["java","-jar", "/ci-cd-springboot-app"]