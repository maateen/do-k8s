# Digitalocean Kubernetes Cluster

![Kubernetes Cluster Diagram](https://www.guru99.com/images/1/061419_0430_KubernetesT1.png)

This [Kubernetes Cluster](https://www.digitalocean.com/products/kubernetes/) is managed by [Digitalocean](https://www.digitalocean.com/). Initially, there are two nodes and can be scaled anytime.

## Launch Cluster

Setting up a Kubernetes (K8s) cluster on Digitalocean has been easy with [Terraform](https://www.terraform.io/). But before playing with Terraform, we need to fetch a token from our Digitalocean account and set it up as an environment variable.

```bash
$ export TF_VAR_do_token="Our-DO-Token"
```

Once setup is done, we are ready to play with Terraform:

```bash
$ cd kubernetes_cluster
$ terraform init
$ terraform validate
$ terraform plan
$ terraform apply
```

If successful, the K8s cluster is launched perfectly and the necessary kubeconfig file is in place.

## Setup Tools

To play with our K8s cluster, we need to install the following tools on our machine:

- kubectl
- helm

On MacOSX, we can install these tools with the following commands:

```bash
$ brew install kubectl
$ brew install kubernetes-helm
```

## Terraform Variables

| Name | Description | Default |
| --- | --- | --- |
| do_region | The digital ocean region you'd like to deploy the cluster in | "nyc1" |
| cluster_name | The name of the Kubernetes cluster | "do-k8s" |
| cluster_version | The version of Kubernetes to install ithee cluster | "1.16.6-do.2" |
| cluster_default_node_size | The size of the droplets in the default node pool in the cluster | "s-2vcpu-4gb" |
| cluster_default_node_count | The number of nodes in the default node pool in the cluster | 2 |
| kubeconfig_path | The path to save the kubeconfig to | "~/.kube/config" |