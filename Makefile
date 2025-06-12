start:
	minikube start --driver=docker --memory=4096 --cpus=2

install-argo:
	kubectl create namespace argocd || true
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

port-forward-argo:
	kubectl port-forward svc/argocd-server -n argocd 8080:443

install-prometheus:
	helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
	helm repo update
	helm install prometheus prometheus-community/prometheus -n monitoring --create-namespace

destroy:
	minikube delete
