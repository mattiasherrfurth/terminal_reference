### recursively list folders/objects in bucket ###
aws s3 ls s3://bp-test-1 --recursive

### count objects in bucket (NOTE: needs bash) ###
aws s3 ls s3://bucketname/foldername/ --recursive --summarize | grep "Total Objects:"

### copy local file to an S3 URI ###
aws s3 cp "C:\path\to\file.csv" s3://bucketname/foldername/

### copy contents of an S3 folder to a local folder ###
aws s3 cp s3://bucketname/foldername "C:\path\to\folder" --recursive

### copy files w/ filename meeting condition to a local folder ###
aws s3 cp s3://bucketname/foldername "C:\path\to\folder" --exclude "*" --include "*.csv" --recursive

### list lambda functions with names that contain string ###
aws lambda list-functions --region us-gov-west-1 --query "Functions[?contains(FunctionName, `PowerDev`) == `true`].FunctionName"

### get user identity info ###
aws sts get-caller-identity
