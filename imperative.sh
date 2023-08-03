# Create deployment with name simple-deployment
kubectl create deployment simple-deployment3 --image=docker.io/kostiscodefresh/gitops-simple-app:v1.0 

# Scale deployment to 1 replica
kubectl scale deployment simple-deployment3 --replicas=3

# Expose deployment as a service
kubectl expose deployment simple-deployment3 --name=simple-service3 --type=NodePort --port=3100 --target-port=8080

