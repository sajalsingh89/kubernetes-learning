kubectl create -f .\nodeport-service.yaml
kubectl describe service nodeport-service8 
kubectl run backend-pod --image=nginx
kubectl label pod backend-pod app=backend
kubectl describe service nodeport-service