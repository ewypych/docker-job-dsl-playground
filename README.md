Jenkins DSL Playground Docker Image
===================================

Docker implmentation of [Jenkins Job DSL Playground](https://github.com/sheehan/job-dsl-playground) created by sheehan.

How to Build image
------------------

This image is built on Docker Hub automatically when:
* the upstream OS container is rebuilt,
* a commit is made to the `master` branch
* a commit is merge to the `master` branch.

If you need to build this image locally, please do the following steps:

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Clone this repository and get into the directory.
  3. Run `docker build -t job-dsl-playground .`

How to Use
----------

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Pull this image from Docker Hub: `docker pull ewypych/job-dsl-playground:latest`.
  3. Run a container from the image: `docker run --detach --volume=~/.gradle:/home/gradle/.gradle -p 5050:5050 ewypych/job-dsl-playground:latest`.
  4. Go to `http://localhost:5050` in your web browser

Notes
-----

This is a docker implementation of [Jenkins Job DSL Playground](https://github.com/sheehan/job-dsl-playground) made by [sheehan](https://github.com/sheehan). If you want to check a source code of the Jenkins Job DSL Playground application please visit sheehan's GitHub repository. You can also use an open, public application available at [http://job-dsl.herokuapp.com](http://job-dsl.herokuapp.com). 

License
-------

[APACHE-2.0](https://www.tldrlegal.com/l/apache2)

Author
------

Created by [Emil Wypych](https://emilwypych.com), mail [@gmail](mailto:wypychemil@gmail.com).
