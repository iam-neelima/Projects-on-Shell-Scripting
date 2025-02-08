AWS Resource Usage Tracker:

Overview:

This project is a beginner level shell script that tracks AWS resource usage and generates daily reports. The script collects information on active AWS services such as EC2 instances, S3 buckets, Lambda functions, and IAM users. It automates the process of monitoring cloud resources and the collected information is stored in a file called resourceTracker.

Features:

1. Monitors active AWS resources:
    - EC2 instances
    - S3 buckets
    - Lambda functions
    - IAM users
2. Generates a daily usage report
3. Automates execution using a cron job
4. Uses AWS CLI to interact with AWS services
   
Prerequisites:

 - AWS CLI installed and configured with appropriate credentials.
 - Bash shell environment

Installation:

1. Clone the repository:
   - git clone https://github.com/your-username/project-on-shell-scripting.git
   - cd aws-resource-tracker
2. Ensure AWS CLI is installed and configured:
   - aws configure
3. Grant execution permissions to the script:
   - chmod +x aws_resource_tracker.sh
4. Run the script manually to test:
   - ./aws_resource_tracker.sh
     
Script Details:

The script performs the following actions:

- Lists all S3 buckets and writes them to resourceTracker.
- Lists EC2 instances (Instance IDs) and appends them to resourceTracker.
- Lists Lambda functions and appends them to resourceTracker.
- Lists IAM users and appends them to resourceTracker.

Automating with Cron Job:

To automate the execution of this script daily, add a cron job:
1. Open the crontab editor:
  - crontab -e
2. Add the following line to run the script every day at midnight:
  - 0 0 * * * /path/to/resource_tracker.sh
  - Replace /path/to/resource_tracker.sh with the actual path to your script.
3. Save and exit the crontab editor.
  - The script will now execute daily and update the resourceTracker file.
4. Verify scheduled jobs:
  - Crontab -l

Debugging:
  - The script runs in debug mode (set -x), allowing easy troubleshooting by displaying command execution details.
