#!/bin/sh

# Get pods ip
namespace="default"
controller_pod=$(kubectl get pods -n ${namespace} -ljmeter_mode=controller -o jsonpath='{.items[*].metadata.name}')
workers=$(kubectl get pods -n ${namespace} -ljmeter_mode=worker -o jsonpath='{.items[*].status.podIP}' | tr ' ' ',')

# Copy jmx file
jmx="$1"
if [ ! -f "$jmx" ];
then
    echo "Please check that jmx is exist"
    exit
fi
kubectl cp "$jmx" -n $namespace "$controller_pod:/$jmx"

# Run
kubectl exec -ti -n $namespace $controller_pod -- jmeter -n -t /$jmx -Dserver.rmi.ssl.disable=true -R $workers