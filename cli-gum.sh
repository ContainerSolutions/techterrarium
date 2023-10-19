#!/bin/bash

# THIS IS STILL WORK IN PROGRESS

function usage {
    echo ""
    echo "Container Solutions Tech Terrarium"
    echo ""
    echo "usage: $0 [project_name]"
    echo ""
    echo "  -h              display help"
    echo ""
    echo "Example: $0 example"
    echo ""
    exit 1
}

# if no arguments supplied, display usage 
	if [  $# -lt 1 ] 
	then 
		usage
		exit 1
	fi

#gum style \
#	--foreground 212 --border-foreground 212 --border double \
#	--align center --width 50 --margin "1 2" --padding "2 4" \
#	"Hello, there! Welcome to $(gum style --foreground 212 'TechTerrarium')." 'Would you like to deploy infrastructure from a template or DIY?'

gum style --border normal --margin "1" --padding "1 2" --border-foreground 212 "Hello, there! Welcome to $(gum style --foreground 212 'TechTerrarium')." "" "Let's create some infrastructure!"
#NAME=$(gum input --placeholder "What is your name?")

TYPE=$(gum choose "templated" "diy")

if [[ $TYPE == "templated" ]]
then
    echo "  To see the details of each template head to:"
    echo "  www.container-solutions.com/blablalba"
    echo ""
    TEMPLATE=$(gum choose "Small e-commerce startup on GCP" "Super secure infra for banks on Azure" "Julien's favourite" "Azure infra for AI tests")
    gum spin -s line --title "Downloading $TEMPLATE boilerplate..." -- sleep 1
    clear
else
    clear; echo "Pick a cloud priveder"
    CLOUD=$(gum choose "AWS" "GCP" "Azure")

    clear; echo "Pick base service"
    SERVICE=$(gum choose "VM" "K8S" "Serverless")

    clear; echo "Do you want to use default CNI or Cilium for your Kubernetes?"
    CNI=$(gum choose "Default" "Cilium")

    clear; echo "Which extra components would you like to include?"
    INGRESS="Ingress"; VAULT="Vault"; PRIVATE="Private"
    ACTIONS=$(gum choose --cursor-prefix "[ ] " --selected-prefix "[✓] " --no-limit "$INGRESS" "$VAULT" "$PRIVATE")


    if [[ $INGRESS ]]
    then
        clear; echo "Pick your ingress"
        INGRESSKIND=$(gum choose "Nginx" "Traefik")
    fi

    if [[ $VAULT ]]
    then
        clear; echo "Pick your secrets vault"
        VAULTKIND=$(gum choose "Hashicorp Vault" "Azure Vault" "Some other vault")
    fi

    #gum spin -s line --title "Preparing your custom order, hold tight..." -- sleep 3
    #clear

    clear; echo "Preparing your custom order, hold tight..."
    echo ""

    grep -q "$READ" <<< "$ACTIONS" && gum spin -s line --title "Cooking the base..." -- sleep 1
    grep -q "$THINK" <<< "$ACTIONS" && gum spin -s pulse --title "Slicing the mean/veggies..." -- sleep 1
    grep -q "$DISCARD" <<< "$ACTIONS" && gum spin -s monkey --title "Adding the toppings..." -- sleep 2

    sleep 1; clear

    echo "BOOM! Your boilerplate is ready!"
    echo ""
    echo "-------------------------------------------"
    echo "Cloud: $CLOUD"
    echo "Service: $SERVICE with $INGRESSKIND ingress"
    echo "Secret vault: $VAULTKIND"
    echo "-------------------------------------------"
    echo ""
fi




#SCOPE=$(gum input --placeholder "scope")

# Since the scope is optional, wrap it in parentheses if it has a value.
#test -n "$SCOPE" && SCOPE="($SCOPE)"

# Pre-populate the input with the type(scope): so that the user may change it
#SUMMARY=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")
#DESCRIPTION=$(gum write --placeholder "Details of this infra (CTRL+D to finish)")

# Commit these changes
gum confirm "Do you want me to initiate Terraform for you?"