# prometheus-operator stack

for installing with helm helm just run 

```ruby
./helm-chart/Deploy.sh 
```

For installing with kustomization run

```ruby
kubectl apply -k kustomization/
```

For standalone deployment 


```ruby
kubectl apply -f minimal/
```
