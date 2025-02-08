
#!/bin/bash

#######################
# Author : Neelima
#
# This script will report the AWS resource usage
#
# #####################
#
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users
#
 set -x # runs in debug mode

# list s3 buckets
aws s3 ls > resourceTracker #creates a newfile and redirects output to that file

# list ec2 instances
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId' >> resourceTracker # this cmd gives refined specific output and redirects the O/P to the file

# list AWS lambda
echo " print list of Lambda functions"
aws lambda list-functions >> resourceTracker

#list IAM users
echo " print list of IAM Users"
aws iam list-users >> resourceTracker

