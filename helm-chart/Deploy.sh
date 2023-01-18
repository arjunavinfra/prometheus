helm repo add bitnami https://charts.bitnami.com/bitnami

kubectl  apply -f namespace.yaml

helm upgrade kube-prometheus \
    --set prometheus.thanos.create=true \
    --namespace monitoring \
    --values  prometheus-values.yaml \
    bitnami/kube-prometheus

helm upgrade thanos \
    --values thanos-values.yaml \
    --namespace monitoring \
    bitnami/thanos



#  helm template   bitnami/kube-prometheus -f values.yaml 