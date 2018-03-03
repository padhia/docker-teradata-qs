# docker-teradata-rest
Dockerized Teradata Query Services

Notes:

* Before building the docker image, you should have obtained/downloaded
  Teradata Query Services software. Extract the RPM package and place it in the
  same directory as the Dockerfile.

* This product was formerly known as Teradata REST Services

Building the docker image:

`docker build -t tdqs .`

Running the resulting image:

`docker run -i -p 1080:1080 -p 1443:1443 -t tdqs`
