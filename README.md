# circleci-node-aws
CircleCI 2.0 image for NodeJS with AWS CLI and rsync


## Usage
```sh
$ docker run arbornetworks-docker-public-docker.bintray.io/circleci-node-aws:8.4.0 node -v
v8.1.2

$ docker run arbornetworks-docker-public-docker.bintray.io/circleci-node-aws:8.4.0 npm -v
5.0.3


$ docker run \
  -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
  arbornetworks-docker-public-docker.bintray.io/circleci-node-aws:8.4.0 aws s3 ls
2017-01-01 00:19:30 test
```


## CircleCI example
Needs `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` env vars

```yaml
version: 2.0
jobs:
  build:
    docker:
      - image: arbornetworks-docker-public-docker.bintray.io/circleci-node-aws:8.4.0


    steps:
      - checkout


      - run: 
          run: Check node version
          command: node -v


      - run: 
          run: Check npm version
          command: npm -v


      - run: 
          run: List all buckets
          command: aws s3 ls
```
