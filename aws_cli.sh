### recursively list folders/objects in bucket
aws s3 ls s3://bp-test-1 --recursive

### get instance profile
curl http://169.254.169.254/latest/meta-data/iam/info

### count objects in bucket (NOTE: needs bash, grep is a *nix tool)
aws s3 ls s3://bucketname/foldername/ --recursive --summarize | grep "Total Objects:"

### get a summary of object count and total memory for an S3 location
aws s3 ls --summarize --human-readable --recursive s3://bucketname/foldername/

### list the latest object by date
aws s3 ls s3://bucketname/foldername/ --recursive | sort | tail -n 1

### list files in a bucket with name that contains string - needs debug
aws s3 ls s3://your-bucket --recursive | grep your-search-string | cut -c 32-

### list files in a bucket with name that contains string - needs debug
aws s3 ls s3://your-bucket --recursive | grep your-search-string | cut -c 32-

### list only the names for objects in a bucket (NOTE: needs bash, awk is a *nix tool)
aws s3 ls s3://mybucket --recursive | awk '{print $4}'

### tag objects recursively (NOTE: needs bash, xargs is a *nix tool)
aws s3api list-objects --bucket mybucket --query 'Contents[].{Key:Key}' --prefix foo/bar --output text | xargs -n 1 aws s3api put-object-tagging  --bucket mybucket --tagging 'TagSet=[{Key=colour,Value=blue}]' --key

### copy local file to an S3 URI
aws s3 cp "C:\path\to\file.csv" s3://bucketname/foldername/

### copy contents of an S3 folder to a local folder
aws s3 cp s3://bucketname/foldername "C:\path\to\folder" --recursive

### copy files w/ filename meeting condition to a local folder
aws s3 cp s3://bucketname/foldername "C:\path\to\folder" --exclude "*" --include "*.csv" --recursive

### list lambda functions with names that contain string
aws lambda list-functions --region aws-region-name --query "Functions[?contains(FunctionName, `PowerDev`) == `true`].FunctionName"

### get user identity info
aws sts get-caller-identity
