### recursively list folders/objects in bucket ###
aws s3 ls s3://bp-test-1 --recursive

### count objects in bucket (NOTE: needs bash) ###
aws s3 ls s3://ng-ecsg-us-dmz-us-gov-west-1-bronxprod-gf-input/Test/ --recursive --summarize | grep "Total Objects:"

### copy local file to an S3 URI ###
aws s3 cp "C:\Users\j20032\OneDrive - NGC\Documents\BRONX\GF Data\WaferTrackingWIP\Bronx WIP table_6_8_2023.csv" s3://ng-ecsg-us-dmz-us-gov-west-1-bronxsandbox-gf-input/WaferTrackingWIP/

### copy contents of an S3 folder to a local folder ###
aws s3 cp s3://ng-ecsg-us-dmz-us-gov-west-1-bronxprod-2/WeeklyOperationsReview "C:\Users\j20032\OneDrive - NGC\Documents\BRONX\Tek S3 Data\WeeklyOperationsReview" --recursive

### list lambda functions with names that contain string ###
aws lambda list-functions --region us-gov-west-1 --query "Functions[?contains(FunctionName, `PowerDev`) == `true`].FunctionName"

### get user identity info ###
aws sts get-caller-identity
