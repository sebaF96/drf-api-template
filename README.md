## Template for DRF

This template contains all the boilerplate needed for creating a REST API
using Django and django-rest-framework, including JWT auth using Django default User model.


For this template to work, it needs a **.env** file with the following information:

```
DB_ENGINE=''
DB_NAME=''
DB_USER=''
DB_PASSWORD=''
DB_PORT=''
SECRET_KEY=''
```

## Try it with Docker :whale:

In order to try this template with docker, you need to clone this repo,
build the image and run it.

1.
```shell
$ git clone git@github.com:sebaF96/drf-api-template.git drf-template
```

2.
```shell
$ cd drf-template
$ docker build --tag drf-template .
```

3.
```shell
$ docker run -it --rm -p 8000:8000 drf-template
```

4.

Visit localhost:8000/api/hello_world



The server is up and runing connected to a sqlite3 database.

### :warning: IMPORTANT

The docker image is intended to try the endpoints from your local filesystem, you should never
use it in production grade as it is.


