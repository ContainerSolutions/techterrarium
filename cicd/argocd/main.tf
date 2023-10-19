terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.3"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.1.0"
    }
  }
}

resource "kubernetes_namespace" "argocd" {  
  metadata {
    name = "argocd"
  }
}

# Install argocd helm chart using terraform
resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "5.24.1"
  namespace  = kubernetes_namespace.argocd.metadata.0.name
  depends_on = [
    kubernetes_namespace.argocd
  ]
}