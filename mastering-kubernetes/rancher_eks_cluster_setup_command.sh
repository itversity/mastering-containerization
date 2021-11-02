eksctl create cluster \
  --name rancher-server \
  --version 1.20 \
  --region us-east-1 \
  --zones us-east-1a,us-east-1b,us-east-1c,us-east-1d,us-east-1f \
  --nodegroup-name ranchernodes \
  --nodes 3 \
  --nodes-min 1 \
  --nodes-max 4 \
  --managed \
  --profile eksdemo

eksctl create cluster \
  --name rancher-server \
  --version 1.20 \
  --region us-east-1 \
  --zones us-east-1a,us-east-1b,us-east-1c,us-east-1d,us-east-1f \
  --nodegroup-name ranchernodes \
  --nodes-min 1 \
  --nodes-max 4 \
  --node-volume-type gp2 \
  --managed \
  --profile eksdemo
