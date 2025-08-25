kubectl create -f .\loadbalancer-serivce.yaml
kubectl run backend-pod --image=nginx
kubectl label pod backend-pod app=backend
kubectl describe service lb-service