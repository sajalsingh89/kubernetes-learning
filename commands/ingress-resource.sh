kubectl describe ingress demo-ingress
kubectl get ingress
kubectl create ingress --help
kubectl create ingress main-ingress --rule="example.internal/*=example-service:80" --rule="perilious.internal/*=perlious-service:80"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.3.0/deploy/static/provider/cloud/deploy.yaml
kubectl expose pod example-pod --name example-service --port=80 --target-port=80
