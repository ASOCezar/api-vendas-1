#!/bin/bash
hostname=$(curl http://169.254.169.254/metadata/v1/hostname)
docker run -d -p 3333:3333 --name api-vendas-"$hostname" asocezar/api-vendas-1:"$hostname"
