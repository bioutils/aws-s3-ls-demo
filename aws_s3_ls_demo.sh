#!/usr/bin/env bash

# aws_s3_ls_demo.sh - simple script to get contents of aws s3 bucket
#
# dependency: requires `awscli`
# e.g. install on macOS with 
# ```
#      $ brew install awscli
# ```

### WARNING ###
# You need to change three things before you use this script


# setup AWS CLI first
# http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-set-up.html

# configure AWS CLI (e.g. use IAM role for S3 access)
# can also use hard coded values in `~/.aws/config` and `~/.aws/credentials` instead of ENV
export AWS_DEFAULT_REGION=us-east-1
export AWS_ACCESS_KEY_ID='AK...' ## CHANGE your value here
export AWS_SECRET_ACCESS_KEY='EK...' ## CHANGE your value here

# s3 ls command
#  http://docs.aws.amazon.com/cli/latest/reference/s3/ls.html

# setup comman
BUCKET="your-bucket-name"  ## CHANGE your value here
BPATH=""
#BOPTS="--recursive --human-readable --summarize"
BOPTS="--recursive --summarize"
# note: for some use, may not want opts  --human-readable  --sumarize
#BOPTS="--recursive"

# space-separated string (contains dates etc.)
CMD="aws s3 ls s3://$BUCKET/$BPATH $BOPTS"

# see what will be run
# echo $CMD

# Run Forrest Run!
$CMD

# ----------------------------------------
# file list as an array
#FULLCMD="$CMD | awk '{print \$1}'"
#echo $FULLCMD

# $1 -- date		2021-12-01
# $2 -- time		09:37:09
# $3 -- size		7.5
# $4 -- unit		MiB
# $5 -- path/filename

#flist=(`$CMD | awk '{print $4}'`)
#echo $flist

# first element
#echo $flist

# NOTE: indexing starts with 0
#echo ${flist[0]}

# all elements
#  http://stackoverflow.com/questions/15224535/bash-put-list-files-into-a-variable-and-but-size-of-array-is-1
#echo ${flist[@]}

########
# example hard-coded values

# ❯ cat ~/.aws/config
#[default]
#region = us-east-1

# ❯ cat ~/.aws/credentials
#[default]
#aws_access_key_id = ABC.....789
#aws_secret_access_key = sTU....XYZ

########
# Troubleshooting
#
# if you get 
#     An error occurred (InvalidAccessKeyId) when calling the ListObjectsV2 operation: The AWS Access Key Id you provided does not exist in our records.
# 
# it means the credentials are wrong...
