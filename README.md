# docker-tdrest
Dockerized Teradata REST Framework

Before building the docker image, download the software from Teradata website,
unzip and then place the RPM in the same directory as this Dockerfile.

Command to building the docker image:

`docker build -t tdrest .`

It is safe to ignore warnings and errors during the building.


Command to run the resulting image:

`docker run -i -p 1080:1080 -t tdrest`
