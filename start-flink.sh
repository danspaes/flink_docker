#/bin/bash

sudo docker-compose up --scale taskmanager=$1 -d

hostip=$(sudo docker exec flink_job hostname -i)
echo "Your flink UI is available at: http://$hostip"
