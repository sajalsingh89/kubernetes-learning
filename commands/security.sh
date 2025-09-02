kubectl create sa test-sa
kubectl create token test-sa --duration=100h
kubectl api-resources --api-group="apps"
kubectl api-resources --api-group=""
$TOKEN = ""
curl.exe -k https://<URL>/api/v1/namespaces/default/pods --header "Authorization: Bearer $TOKEN"