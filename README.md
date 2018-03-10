# docker-teradata-qs

Dockerized Teradata Query Services

Notes:

* Before building the docker image, you should have obtained/downloaded Teradata Query Services software. Extract the RPM package and place it in the same directory as the Dockerfile.

* This product was formerly known as Teradata REST Services

To start a container:

`docker-compose up -d`

Or

```
docker build -t tdqs .
docker run -i -p 1080:1080 -p 1443:1443 -t tdqs
```
