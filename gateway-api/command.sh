kubectl kustomize "https://github.com/nginx/nginx-gateway-fabric/config/crd/gateway-api/standard?ref=v1.6.2" | kubectl apply -f -
kubectl apply -f https://raw.githubusercontent.com/nginx/nginx-gateway-fabric/v1.6.2/deploy/crds.yaml
kubectl apply -f https://raw.githubusercontent.com/nginx/nginx-gateway-fabric/v1.6.2/deploy/default/deploy.yaml
kubectl get namespace
kubectl get pods -n nginx-gateway
kubectl get service -n nginx-gateway
kubectl apply -f .\gateway-api\create-gateway.yaml
kubectl create deployment apache --image=httpd:latest --port=80
kubectl expose deployment apache --name=apache-service --port=80 --target-port=80 --type=ClusterIP
kubectl apply -f .\gateway-api\http-route.yaml

########## Delete after Creating it
kubectl delete pods --all
kubectl delete svc apache-service
kubectl delete gateway nginx-gateway
kubectl delete -f https://raw.githubusercontent.com/nginx/nginx-gateway-fabric/v1.6.2/deploy/default/deploy.yaml
kubectl delete -f https://raw.githubusercontent.com/nginx/nginx-gateway-fabric/v1.6.2/deploy/crds.yaml
