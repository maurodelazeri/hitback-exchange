## About docker

We just use docker deploy and we don't ensure this `Dockerfile` working for your environment.

```
cd hitback/doc/docker
docker build -t hitback/base .
./bin/base.sh
./bin/webapp.sh
```

Operating Systems
-----------------

Hitback is developed for Mac and Linux operating system, Ubuntu 14.04 LTS is recommended.

## Officially supports

* Ubuntu Linux 14.04 LTS
* Mac OS X Mavericks

## Ruby versions

Hitback requires Ruby (MRI) 2.1.0+. You will have to use the standard MRI implementation of Ruby.

## Hardware requirements

#### CPU

* **2 cores is the recommended number of cores and supports up to 100 users**
* 4 cores supports up to 1,000 users
* 8 cores supports up to 10,000 users

#### Memory

* **4GB is the recommended memory size and supports up to 1,000 users**
* 8GB supports up to 10,000 users

#### Storage

If you run bitcoind at local, the necessary hard drive space largely depends on the size of the [blocks](https://en.bitcoin.it/wiki/Blocks) of Bitcoin network (30G for now). 100G is recommended at start.

#### Supported browsers

* Chrome (Latest stable version)
* Firefox (Latest released version)
* Safari (Latest released version)
* IE 10+

## Development Dependencies

* [RabbitMQ](https://www.rabbitmq.com/) is Hitback's backbone, it's the message broker doing all the message exchanges between daemons.
* Hitback use [Phantomjs](http://phantomjs.org/) to test JavaScript.
* PhantomJS

## Support

Any Questions: [community@hitback.com](mailto:community@hitback.com)
