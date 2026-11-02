# Copyright (c) 2024 BB Tech Systems LLC

terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = ">= 0.68.0"
    }
    talos = {
      source = "siderolabs/talos"
      version = ">= 0.6.1"
    }
  }
}

provider "proxmox" {
  endpoint = "https://192.168.15.100:8006/"
  insecure = true
}

#module "talos" {
#    source  = "bbtechsys/talos/proxmox"
#    version = "0.1.5"
#    talos_cluster_name = "test-cluster"
#    talos_version = "1.9.5"
#    control_nodes = {
#        "control-1" = "pve1"
#    }
#    worker_nodes = {
#        "worker-1" = "pve1"
#        "worker-2" = "pve1"
#    }
#}
#
#output "talos_config" {
#    description = "Talos configuration file"
#    value       = module.talos.talos_config
#    sensitive   = true
#}
#
#output "kubeconfig" {
#    description = "Kubeconfig file"
#    value       = module.talos.kubeconfig
#    sensitive   = true
#}