# Install 
```bash
kubectl create namespace observability 
kubectl create -f https://github.com/jaegertracing/jaeger-operator/releases/download/v1.53.0/jaeger-operator.yaml -n observability 
```

# Install by helm 
```bash
helm install jaeger jaegertracing/jaeger
```