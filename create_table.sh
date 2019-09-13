awslocal dynamodb delete-table --table-name $1; 
awslocal dynamodb create-table --cli-input-json file://$2;

