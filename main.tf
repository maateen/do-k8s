module "kubernetes_cluster" {
  source                     = "git::https://github.com/jaxxstorm/terraform-do-kubernetes?ref=v0.1.2"
  do_token                   = var.do_token
  do_region                  = var.do_region
  cluster_name               = var.cluster_name
  cluster_default_node_size  = var.cluster_default_node_size
  cluster_default_node_count = var.cluster_default_node_count
  cluster_version            = var.cluster_version
}
