kubectl apply -f .\storage\multi-container-data.yaml
kubectl exec -it multi-container-pod -c busybox-container-1 -- sh
kubectl exec -it multi-container-pod -c busybox-container-2 -- sh