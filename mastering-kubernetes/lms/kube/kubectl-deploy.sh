kubectl create namespace itvlms

kubectl apply -f kube/01-docker-registry-secret.yaml -n itvlms
kubectl apply -f kube/02-lmsdbserver-superuser-secret.yaml -n itvlms
kubectl apply -f kube/03-lmsdbserver-deployment.yaml -n itvlms

DBSERVER_POD=`kubectl get pods -n itvlms -l=app=lmsdbserver --no-headers -o NAME|cut -d"/" -f2`
kubectl cp kube/04-lmsdbserver-setup-database.sql itvlms/${DBSERVER_POD}:/.
kubectl exec deployment/lmsdbserver -n itvlms -i -t -- \
  psql -U postgres -f /04-lmsdbserver-setup-database.sql

kubectl apply -f kube/lmsapp -n itvlms
