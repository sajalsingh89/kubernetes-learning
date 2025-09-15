kubectl create ingress first-ingress --rule="example.internal/*=example-service:80"
kubectl run example-pod --image=nginx
kubectl run maverick-pod --image=httpd
kubectl expose pod example-pod --name example-service --port=80 --target-port=80
kubectl expose pod maverick-pod --name maverick-service --port=80 --target-port=80
kubectl describe svc example-service
kubectl describe svc maverick-service
kubectl get pods -o wide
kubectl create ingress main-ingress --class=nginx --rule="example.internal/*=example-service:80" --rule="maverick.internal/*=maverick-service:80"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.12.0/deploy/static/provider/cloud/deploy.yaml
kubectl get pods -n ingress-nginx
kubectl get service -n ingress-nginx
curl -H "Host: example.internal" <LB-IP>
curl -H "Host: kplabs.internal" <LB-IP>


kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.12.0/deploy/static/provider/cloud/deploy.yaml
kubectl delete ingress main-ingress
kubectl delete svc example-service
kubectl delete svc maverick-service
kubectl delete pods --all


