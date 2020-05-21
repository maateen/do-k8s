variable "do_token" {
  description = "Your digital ocean API token"
}

variable "do_region" {
  description = "The digital ocean region you'd like to deploy the cluster in"
  default     = "nyc1"
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  default     = "do-k8s"
}

variable "cluster_version" {
  description = "The version of Kubernetes to install ithee cluster"
  default     = "1.16.6-do.2"
}

variable "cluster_default_node_size" {
  description = "The size of the droplets in the default node pool in the cluster"
  default     = "s-2vcpu-4gb"
}

variable "cluster_default_node_count" {
  description = "The number of nodes in the default node pool in the cluster"
  default     = 2
}

variable "kubeconfig_path" {
  description = "The path to save the kubeconfig to"
  default     = "~/.kube/config"
}
