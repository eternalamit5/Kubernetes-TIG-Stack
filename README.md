# Kubernetes-TIG-Stack
Kubernetes-TIG-Stack: Deploy InfluxDB Telegraf  Grafana on K8s 

Clone the git repo and do the following:

1. start the minikube cluster:
   
    minikube start --driver=virtualbox --extra-config=apiserver.service-node-port-range=1-30000

2. mount the grafana:

     minikube mount ${PWD}/grafana/config:/grafana

3. Now deploy the Telegraf, InfluxDB and Grafana using the below commands:

     kubectl apply -f influxdb

     kubectl apply -f telegraf

     kubectl apply -f grafana


4. To see the list of services:

     minikube service list

5. To watch

     kubectl get pods -A --watch
