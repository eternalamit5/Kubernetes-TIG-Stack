.PHONY: telegraf influxdb grafana

clean:
	minikube delete

start:
	minikube start --driver=virtualbox --extra-config=apiserver.service-node-port-range=1-30000

influxdb:
	kubectl apply -f influxdb

telegraf:
	kubectl apply -f telegraf

mount:
	minikube mount ${PWD}/grafana/config:/grafana

	if above doesn't work then use like below:

	minikube mount /home/lcl_asingh/Drive\ A/Amit/sandbox/Kubernetes-TIG-Stack/grafana/config:/grafana

grafana:
	kubectl apply -f grafana

all:
	kubectl apply -R -f .

list:
	minikube service list

watch:
	kubectl get pods -A --watch
