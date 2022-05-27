#run 
#!/bin/bash
kubectl apply -f kubernetes

kubectl get pods
kubectl get deployments
kubectl get svc

#clean up
#!/bin/bash
docker system prune -f