kubectl create namespace itvlms

kubectl get namespaces

kubectl apply -f kube/01-docker-registry-secret.yaml -n itvlms
kubectl get secrets -n itvlms

kubectl apply -f kube/02-lmsdbserver-superuser-secret.yaml -n itvlms
kubectl get secrets -n itvlms

kubectl apply -f kube/03-lmsdbserver-deployment.yaml -n itvlms
kubectl get all -n itvlms

kubectl cp kube/04-lmsdbserver-setup-database.sql itvlms/lmsdbserver-78f86b56df-mztck:/.
kubectl exec lmsdbserver-78f86b56df-mztck -n itvlms -i -t -- \
  psql -U postgres -f /04-lmsdbserver-setup-database.sql

kubectl apply -f kube/lmsapp -n itvlms
kubectl get all -n itvlms

kubectl logs deployment/lmsappserver -n itvlms