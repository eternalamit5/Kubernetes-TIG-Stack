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



## Results:

- List all services exposed by Minikube:


![Screenshot from 2023-09-29 11-58-43](https://github.com/eternalamit5/Kubernetes-TIG-Stack/assets/44448083/9d686e35-1c61-4014-bc38-7212aa993058)



# Grafana Dashboard:

Open the grafana-service URL and go to the Data sources list (left menu > Configuration > Data Sources). You should like two Data sources pointing to InfluxDb:

![image](https://github.com/eternalamit5/Kubernetes-TIG-Stack/assets/44448083/75108ac0-2d7a-488d-b8b5-a4857dee8bdb)


Go to the Dashboards list (left menu > Dashboards > Manage). The Analysis Server dashboard should be visible:

![image](https://github.com/eternalamit5/Kubernetes-TIG-Stack/assets/44448083/a5efe1eb-2fb4-4431-a6d4-5f9219279f93)


Open it to display monitoring information of the Minikube VM:

![Screenshot from 2023-09-29 11-57-46](https://github.com/eternalamit5/Kubernetes-TIG-Stack/assets/44448083/ffabb253-adb3-4bf9-8cb0-4a022b92ea03)


