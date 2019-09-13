awslocal dynamodb describe-table --table-name $1 | \
    jq "{TableName: .Table.TableName, \
    AttributeDefinitions: .Table.AttributeDefinitions, \
    KeySchema: .Table.KeySchema, \
    ProvisionedThroughput: {ReadCapacityUnits: .Table.ProvisionedThroughput.ReadCapacityUnits, WriteCapacityUnits: .Table.ProvisionedThroughput.WriteCapacityUnits}, \
    GlobalSecondaryIndexes: .Table.GlobalSecondaryIndexes \
    | map({ \
            IndexName:.IndexName, \
            KeySchema:.KeySchema, \
            Projection:.Projection, \
          ProvisionedThroughput:.ProvisionedThroughput \
        })
}"
