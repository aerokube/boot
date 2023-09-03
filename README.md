# Boot
[![Docker Pulls](https://img.shields.io/docker/pulls/aerokube/boot.svg)](https://hub.docker.com/r/aerokube/boot)

Boot is a commercial closed-source solution to launch lightweight test and development environments. Boot relies on [Kubernetes](https://kubernetes.io/) or [Openshift](https://www.redhat.com/en/technologies/cloud-computing/openshift).

## Pricing Model

* The only limitation that determines final Boot price is the **total number of virtual machines** being run in parallel.
* You can run virtual machines up to **1 (one)** CPU total for free. Everything on top of free limit is paid as a subscription.
* **Detailed pricing** information is available in respective documentation [section](https://aerokube.com/boot/latest/#_pricing).
* You can obtain **a free evaluation license key** on our [web-site](https://aerokube.com/boot/).

## Free Support

* Detailed [documentation](http://aerokube.com/boot/latest/)
* Telegram [support channel](https://t.me/aerokube_boot)
* Support by [email](mailto:support@aerokube.com)
* StackOverflow [tag](https://stackoverflow.com/questions/tagged/aerokube-boot)
* Issue [tracker](https://github.com/aerokube/boot/issues)
* YouTube [channel](https://www.youtube.com/channel/UC9HvE3FNfTvftzpvXi9c69g)

## Features

The main idea behind Boot is to be easily installable and require zero maintenance.

### One-command Installation

Having a running [Kubernetes](https://kubernetes.io/) cluster and [Helm](https://helm.sh) configured to use it, you can launch free Boot cluster by typing commands below:

```(bash)
$ helm repo add aerokube https://charts.aerokube.com/
$ helm repo update
$ helm upgrade --install --create-namespace -n boot boot aerokube/boot
```

See our [documentation](https://aerokube.com/boot/latest/#install) for more installation options. 

### Scalability and Fault Tolerance

* Your cluster size is **automatically** determined by Kubernetes depending on the load.
* Boot is completely **stateless** and allows to run an **unlimited** number of replicas behind load balancer.
* **No additional configuration** is required to add a new Boot replica.
* **User requests are not lost** even in case of an accidental crash or downtime of the replica.

### Efficient and Lightning Fast

* Boot is implemented using lightning fast [Golang](https://golang.org/).
* One Boot replica consumes **0.5 CPU** and **512 Mb RAM** maximum.
* One Boor replica is able to work with **thousands** of environments.

## Complete Guide

Complete reference guide can be found at: http://aerokube.com/boot/latest/
