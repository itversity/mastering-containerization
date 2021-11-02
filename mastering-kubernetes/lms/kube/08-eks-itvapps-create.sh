eksctl create cluster \
  --name itvapps \
  --version 1.21 \
  --region us-east-1 \
  --zones us-east-1a,us-east-1b,us-east-1c,us-east-1d,us-east-1f \
  --nodegroup-name ng-itvlms \
  --nodes-min 1 \
  --nodes-max 3 \
  --node-volume-type gp2 \
  --profile eksdemo

eksctl get cluster \
  --region us-east-1 \
  --profile eksdemo

eksctl get nodegroup \
  --cluster itvapps \
  --region us-east-1 \
  --profile eksdemo

eksctl scale nodegroup \
  --cluster itvapps \
  --name ng-itvlms \
  --nodes 2 \
  --region us-east-1 \
  --profile eksdemo