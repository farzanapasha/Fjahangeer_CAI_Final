#!/bin/bash

set -e

BUCKET_NAME="fjah1872-lab-terraform-state"
DYNAMO_TABLE_NAME="fjah1872-terraform-state-lock-table"
REGION="us-west-2"

# Check if the S3 bucket exists
if aws s3api head-bucket --bucket "$BUCKET_NAME" 2>/dev/null; then
  echo "✅ S3 bucket '$BUCKET_NAME' already exists. Skipping creation."
else
  echo "🪣 Creating S3 bucket '$BUCKET_NAME'..."
  aws s3api create-bucket \
    --bucket "$BUCKET_NAME" \
    --region "$REGION" \
    --create-bucket-configuration LocationConstraint="$REGION"
  echo "✅ S3 bucket created."
fi

# Enable versioning on the S3 bucket
echo "🔁 Enabling versioning on bucket '$BUCKET_NAME'..."
aws s3api put-bucket-versioning \
  --bucket "$BUCKET_NAME" \
  --versioning-configuration Status=Enabled
echo "✅ Versioning enabled."

# Check if the DynamoDB table exists
if aws dynamodb describe-table --table-name "$DYNAMO_TABLE_NAME" --region "$REGION" 2>/dev/null; then
  echo "✅ DynamoDB table '$DYNAMO_TABLE_NAME' already exists. Skipping creation."
else
  echo "📦 Creating DynamoDB table '$DYNAMO_TABLE_NAME'..."
  aws dynamodb create-table \
    --table-name "$DYNAMO_TABLE_NAME" \
    --attribute-definitions AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 \
    --region "$REGION"
  echo "✅ DynamoDB table created."
fi

