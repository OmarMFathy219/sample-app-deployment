# create namespace
kubectl create namespace sandbox

# Create deployment with name simple-deployment
kubectl create deployment simple-deployment --image=docker.io/kostiscodefresh/gitops-simple-app:v1.0 --namespace=sandbox

# Scale deployment to 1 replica
kubectl scale deployment simple-deployment --replicas=1 --namespace=sandbox

# Expose deployment as a service
kubectl expose deployment simple-deployment --name=simple-service --type=NodePort --port=3100 --target-port=8080 --namespace=sandbox

# Port-forward service to localhost
kubectl port-forward service/simple-service 3100:3100 --namespace=sandbox
