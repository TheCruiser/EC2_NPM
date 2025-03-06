#!/bin/bash

################################################

# Author: Satish
# Date: 8th Feb 2025

# A small script where using AWS, we'll be sharing resource usage of AWS Components like EC2, S3, Lambda, IAM etc. at a particular time to the reporting dashboard. Using a Cronjob.

###################################################

#Set the default AWS region
export AWS_DEFAULT_REGION=us-east-1

# AWS S3
## list all s3 buckets
echo '======================='
echo 'List of all S3 buckets'
aws s3 ls

# AWS EC2
## list all ec2 instances
echo '======================='
echo 'List of all EC2 instances'
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# AWS Lambda
## list all lambda functions
echo '======================='
echo 'List of all Lambda functions'
aws lambda list-functions

# AWS IAM Users
## list all IAM users
echo '======================='
echo 'List of all IAM users'
aws iam list-users  