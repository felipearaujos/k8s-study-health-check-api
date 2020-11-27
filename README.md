# k8s-study-health-check
Just some samples to create a dockerfile and healthcheck plug


## Docker

- docker build -t felipearaujos/health-check . --no-cache
- docker run -d --name health-check-api -p 4000:4000 felipearaujos/health-check
- docker push felipearaujos/health-check:latest

## Minikube

- kubectl config use-context minikube
- minikube start
- minikube kubectl -- get pods
- minikube addons enable ingress
- minikube dashboard

## Helm

- helm create mychartname
- cd mychartname
- helm create buildachart
- ls buildachart/
- helm install my-cherry-chart buildachart/ --values buildachart/values.yaml
- helm uninstall my-cherry
- helm install remove buildachart/ --values buildachart/values.yaml
