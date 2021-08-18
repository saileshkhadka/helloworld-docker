Hello, World (Python/Flask)

This is a Python/Flask template for building a microservice in Docker.
Repository structure

The main files in this repository are:

    Dockerfile specifies how the application is built and packaged
    Jekinsfile that contains the pipeline script to be used in jenkins for build , push and run the python container.
    app.py is the actual Python/Flask application that also includes connection with remote mongodb.
    requirements.txt that contiains all the python dependencies
