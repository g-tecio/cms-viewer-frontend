#!/bin/bash

aws cloudformation $ACTION \
    --region us-west-1 \
    --stack-name $STACK_NAME \
    --template-body file://service.yaml \
    --capabilities CAPABILITY_NAMED_IAM \
    --parameters \
    ParameterKey=ViewerImage,ParameterValue=805495149875.dkr.ecr.us-east-1.amazonaws.com/cms-viewer:$(git rev-parse HEAD) \
    ParameterKey=VPC,ParameterValue=vpc-01795934d771ba8c8 \
    ParameterKey=Cluster,ParameterValue=cms-websites \
    ParameterKey=Listener,ParameterValue=arn:aws:elasticloadbalancing:us-west-1:805495149875:listener/app/cms-viewer/a3b5757102193a0a/bcc6830442442a93