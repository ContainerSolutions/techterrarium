#!/bin/bash


while getopts i:s:a:d: flag
do
case "${flag}" in
    i) infra=${OPTARG};;
    s) service=${OPTARG};;
    a) app=${OPTARG};;
    d) cicd=${OPTARG};;
esac
done

function usage {
    echo ""
    echo "Container Solutions Tech Terrarium"
    echo ""
    echo "usage: $0 [params]"
    echo ""
    echo "  -i (infra)      pick infrastructure provider [local, azure, aws, gcp]"
    echo "  -s (service)    pick service [vm, kubernetes, serverless]"
    echo "  -a (app)        pick app to deploy [none, simple, 3tier]"
    echo "  -d (ci/cd)      pick ci/cd system [none, argocd, flux]"
    echo ""
    echo "  -h          display help"
    echo ""
    echo "Example: ./cstt.sh -i azure -s kubernetes -a simple -d flux"
    echo ""
    exit 1
}

# if no arguments supplied, display usage 
	if [  $# -lt 1 ] 
	then 
		usage
		exit 1
	fi


echo ""
echo "--------------------"
echo "Generating code for:"
echo "--------------------"
echo ""
echo "Infra: $infra"
echo "Service: $service"
echo "App: $app"
echo "CICD: $cicd"
echo ""
echo "--------------------"
echo "Code generated..."
echo "--------------------"
echo ""
echo "--------------------"
echo "To deploy run \$terraform apply"
echo "--------------------"
echo ""