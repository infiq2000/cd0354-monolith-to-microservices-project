#!/bin/bash

for function_name in $(aws lambda list-functions --query 'Functions[].FunctionName' --output text); do
    aws lambda delete-function --function-name $function_name
done

