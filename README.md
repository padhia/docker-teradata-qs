# docker-tdrest
Dockerized Teradata REST package

Notes:

* Before building the docker image, you should have obtained/downloaded
  Teradata REST Services software. Extract the RPM package and place it in the
  same directory as the Dockerfile.

* The default init system for `centos7` is `systemd`. Teradata REST rpm creates
  and attempts to start traditional `/etc/init.d/tdrestd` resulting in error
  messages to be shown during rpm installation. Since `CMD` specification
  within the `Dockerfile` explicitly starts the tomcat server, it is safe to
  ignore these errors.

Building the docker image:

`docker build -t tdrest .`

Running the resulting image:

`docker run -i -p 1080:1080 -t tdrest`
