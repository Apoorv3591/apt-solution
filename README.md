# One-Click Deployment — DevOps Assignment

## Architecture
Client → ALB → Target Group → AutoScaling Group → Private EC2 instances  
NAT Gateway provides outbound Internet to private EC2.

## Deploy
./scripts/deploy.sh

After completion, get ALB DNS:
terraform output alb_dns

## Test
./scripts/test.sh

Expected:
"Hello from private EC2!"
"ok"

## Teardown
./scripts/destroy.sh
