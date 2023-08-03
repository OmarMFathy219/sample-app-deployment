# 

# Simple App Deployment
Simple web app deployment for GitOps and ArgoCD Lab

The repository contains Kubernetes manifests that defines the simple app deployment. 

To deploy the application manually run the following command:

```
kubectl create ns sandbox
kubectl apply -f . -n sandbox
```

To test the application run the command below and access http://localhost:3100/

```
kubectl port-forward svc/simple-service 3100:3100 -n sandbox
```