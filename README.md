# Banjo task for Docker ELK stack 

****** Everything is done based on Docker Container System on Ubuntu 14.04 Trusty******

Run the latest version of the ELK (Elasticseach, Logstash, Kibana) stack with Docker and Docker-compose.

It will give you the ability to analyze any data set by using the searching/aggregation capabilities of Elasticseach and the visualization power of Kibana.

Logspout is a effient way to deliver logs generated by Docker containers. I'm the owner of that repo on docker hub https://hub.docker.com/r/oneforone/logspout/

Logspout is used to deliver logs only from nginx through logstash. So in this case, elasticsearch template method is not used, and IP address with status code can be parsed and shown by running query - "* ip_address:[10.0.0.0 TO 10.255.255.255] 200 404 500 NOT error" based on Kibana Web GUI.

Based on the official images:

* [elasticsearch](https://registry.hub.docker.com/_/elasticsearch/)
* [logstash](https://registry.hub.docker.com/_/logstash/)
* [kibana](https://registry.hub.docker.com/_/kibana/)
* [logspout](https://hub.docker.com/r/oneforone/logspout/)

# Requirements

## Setup

This script will install Docker and docker-compose.

```bash
$ sudo bash ./pre-req.sh
```

## Start Web Service in Docker

```bash
$ git clone https://github.com/PatriQ7/banjo-task-web.git

$ cd path/to/banjo-task-web

$ docker-compose up -d
```

# Usage

Start the ELK stack using *docker-compose*:

```bash
$ cd path/to/banjo-task

$ docker-compose up
```

You can also choose to run it in background (detached mode):

```bash
$ docker-compose up -d
```

And then access Kibana UI by hitting [http://localhost:5601](http://localhost:5601) with a web browser.

WARNING: This original code is using a hard coded env variable of a private IP address 10.10.1.12 for Configurations of ELK.
