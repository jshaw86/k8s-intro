# K8s Hello World

This is a quick intro to K8s resources and demoing an end to end echo server on minikube using helm

# Setup

```
brew install minikube helm kubectl
```

# Run

Follow the 3 steps in the output of the script 

```
./run.sh
```

Here is a screenshot of running:
1. minikube tunnel
2. editing /etc/hosts
3. running a curl against the minikube tunnel load balancer

![sample](https://github.com/jshaw86/k8s-intro/blob/master/sample.png)
