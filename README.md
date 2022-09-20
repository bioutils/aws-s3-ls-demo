# aws-s3-ls-demo

script to demonstrate connecting to aws s3 bucket via terminal

prerequisites: `awscli`

The shell script "aws_s3_ls_demo.sh" is an example script 
that shows you how to connect programmatically to AWS S3.

A. Just change the values based on your credentials:
```
export AWS_ACCESS_KEY_ID='AKIA...' ## put your value here
export AWS_SECRET_ACCESS_KEY='EKv...' ## put your value here
```

B. and the name of your bucket:
```
BUCKET="cds-office-hours-bucket-2022-09-20"
```

C. and run
```
bash ./aws_s3_ls_demo.sh
```

NOTE: you may also need to change the region:
export AWS_DEFAULT_REGION='us-east-1'  
