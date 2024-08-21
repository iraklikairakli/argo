#!/bin/bash
success=0
failure=0
##################
for i in {1..5}
do
        response=$(curl -s -o /dev/null -w "%{http_code}" $service_url)
        if [ "$response" -eq 200 ]
        then
		((success++))
         else
                ((failure++))
         fi
         sleep 5s
done
##################
echo "Success rate: $success/5"
##################
if [ "$success" -ge 3 ]
then
        exit 0
else
        exit 1
fi