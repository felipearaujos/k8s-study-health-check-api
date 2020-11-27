# k8s-study-health-check
Just some samples to create a dockerfile and healthcheck plug


## Docker

- docker build -t felipearaujos/health-check . --no-cache
- docker run -d --name health-check-api -p 4000:4000 felipearaujos/health-check
- docker push felipearaujos/health-check:latest

## Minikube

- minikube start
- minikube kubectl -- get pods
- minikube addons enable ingress
- minikube dashboard

## Kubect
- kubectl cluster-inf
- kubectl config use-context minikube
- kubectl logs pod-name

## Helm

- helm create mychartname
- cd mychartname
- helm create buildachart
- ls buildachart/
- helm install my-cherry-chart buildachart/ --values buildachart/values.yaml
- helm uninstall my-cherry
- helm install remove buildachart/ --values buildachart/values.yaml



# What is this?
- API -> A simple elixir image to be used as application to deploy
- araujo-org-chart -> helm chart to facilitate k8s depoloyment -> Helm is a package manager for Kubernetes
- k8s -> running locally using minikube
- docker-hub -> when the API image is published

