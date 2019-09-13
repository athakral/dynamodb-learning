awslocal dynamodb delete-table --cli-input-json file://$1; 
awslocal dynamodb create-table --cli-input-json file://$1;

