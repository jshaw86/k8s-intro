# K8s Hello World

This is a quick intro to K8s resources and demoing an end to end echo server on minikube using helm

# Setup

```
brew install minikube helm kubectl
```

> Warning! Running the below will install helm 3.0 into /usr/local/bin. If you have helm 2.0 already installed I don't recommend:
> 1. install helm via brew instead follow https://helm.sh/docs/intro/install/#from-script and 
> 2. run the script with a different HELM_INSTALL_DIR
> 3. mv $HELM_INSTALL_DIR/helm $HELM_INSTALL_DIR/helm3 
> then you can run your helm and helm3 side by side

# Run

```
./run.sh
```

> NOTE: if you aren't using the brew helm you can override the helm binary with HELM=helm3 ./run.sh

# Wiring it all up

Per the output of the `./run.sh` script you'll need to create a tunnel into minikube(effectively a load balancer), then spoof the hello-world.local dns record via /etc/hosts and then curl via the host name to /hello-world.

Here is a screenshot of running:
1. minikube tunnel
2. editing /etc/hosts
3. running a curl against the minikube tunnel load balancer

![sample](https://github.com/jshaw86/k8s-intro/blob/master/sample.png)
