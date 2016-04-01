# lambda-sandbox


## Project Description

The popularity of the AWS Lambda service and serviceless architecture is growing.
The project goal is to provide for developers a local sandbox environment for the
Lambda development. There are cases, when you don't want to do AWS Lambda testing
online on the real AWS environment, for example, your don't want to be a charged
for the AWS resource usage. For handling such cases it was create this project.

Project is a sandbox environment, that helps to run lambda functions localy inside
a docker containers.

## Before you start

Make sure that you have a Docker installed on your development machine.
If you don't have a docker installed, read and follow the instructions:
https://docs.docker.com/engine/installation/

## Quick start

1. Clone project: git clone git@github.com:vfedoroff/lambda-sandbox.git
2. Go to the project directory
3. Build docker image: docker build -t "lambda-sandbox" .
4. Run test container:
   bash run.sh

   or

   docker run -v  `pwd`:/lambda lambda-sandbox bash -c "lambda-local -l /lambda/app.js -h handler -e /lambda/test-event.json"


## References and nice to read

More details you can read here:

1. Commandline tool to run Lambda functions on your local machine: https://www.npmjs.com/package/lambda-local
2. AWS Lambda Programming Model: http://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html
3. AWS Lambda Creating a Deployment Package: http://docs.aws.amazon.com/lambda/latest/dg/nodejs-create-deployment-pkg.html
