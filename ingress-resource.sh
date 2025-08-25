kubectl describe ingress demo-ingress
kubectl get ingress
kubectl create ingress --help
kubectl create ingress main-ingress --rule="example.internal/*=example-service:80" --rule="perilious.internal/*=perlious-service:80"