   5 helm repo add bitnami https://charts.bitnami.com/bitnami
   6 helm install my-nginx bitnami/nginx --version 21.1.23
   7 kubectl get pods
   8 kubectl get hpa
   9 kubectl get service
  10 helm list
  11 helm repo list
  12 helm serach repo bitnami
  13 helm search repo bitnami
  14 helm template bitnami/nginx
  15 helm template bitnami/nginx -n custom-helm > nginx.yaml
  16 helm uninstall my-nginx