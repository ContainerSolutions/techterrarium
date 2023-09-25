#!/bin/bash


while getopts p:i:s:a:d: flag
do
case "${flag}" in
    p) project=${OPTARG};;
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
    echo "  -p (project)    pick name for your project"
    echo "  -i (infra)      pick infrastructure provider [local, azure, aws, gcp]"
    echo "  -s (service)    pick service [vm, kubernetes, serverless]"
    echo "  -a (app)        pick app to deploy [none, simple, 3tier]"
    echo "  -d (ci/cd)      pick ci/cd system [none, argocd, flux]"
    echo ""
    echo "  -h              display help"
    echo ""
    echo "Example: $0 -p example_project -i azure -s kubernetes -a simple -d flux"
    echo ""
    exit 1
}

# if no arguments supplied, display usage 
	if [  $# -lt 1 ] 
	then 
		usage
		exit 1
	fi

# Validate cloud provider
if [ "$infra" != "azure" ] && [ "$infra" != "aws" ] && [ "$infra" != "gcp" ]; then
  echo "Invalid infrastructure. Supported options are: azure, aws, gcp"
  exit 1
fi

echo ""
echo "--------------------"
echo "Generating code for:"
echo "--------------------"
echo ""
echo "Project: $project"
echo "Infra: $infra"
echo "Service: $service"
echo "App: $app"
echo "CICD: $cicd"
echo ""

# Create a directory structure
mkdir $project
cd $project

# Initialize a Git repository
git init

# Create directory structure
mkdir infrastructure cicd app

# Create a basic README file
echo "# Template for : $infra + $service + $app + $cicd" > README.md

# Download the provider.tf file based on user input
providers_url="https://raw.githubusercontent.com/ContainerSolutions/techterrarium/dawid/infrastructure/terraform"
curl -o infrastructure/providers.tf $providers_url/$infra/providers.tf

# Create an empty main.tf file
touch infrastructure/main.tf

echo "--------------------"
echo "Code generated..."
echo "--------------------"
echo ""
echo "--------------------"
echo "For deployment instructions read:"
echo "$project/README.md"
echo "--------------------"
echo ""