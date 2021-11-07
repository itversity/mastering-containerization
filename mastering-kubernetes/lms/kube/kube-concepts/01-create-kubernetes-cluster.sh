eksctl create cluster \
  --name keyconcepts \
  --version 1.21 \
  --region us-east-1 \
  --zones us-east-1a,us-east-1b,us-east-1c,us-east-1d,us-east-1f \
  --nodegroup-name ng-demo \
  --nodes 2 \
  --nodes-min 1 \
  --nodes-max 3 \
  --node-volume-type gp2 \
  --profile eksdemo \
  --ssh-access

aws ec2 describe-instances \
  --filters Name=alpha.eksctl.io/nodegroup-name,Values=ng-demo Name=instance-state-name,Values=running \
  --output json \
  --profile eksdemo \
  --region us-east-1

aws ec2 describe-instances \
  --filters Name=tag:eks:nodegroup-name,Values=ng-demo \
  --query 'Reservations[*].Instances[*].{PublicDnsName:PublicDnsName}' \
  --profile eksdemo \
  --region us-east-1 | cat
