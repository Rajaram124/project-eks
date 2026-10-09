region = "us-east-2"

vpc_cidr = "10.0.0.0/16"

availability_zones = [
  "us-east-2a",
  "us-east-2b",
  "us-east-2c"
]

private_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

public_subnet_cidrs = [
  "10.0.4.0/24",
  "10.0.5.0/24",
  "10.0.6.0/24"
]

cluster_name = "growstack-eks-test-cluster"

cluster_version = "1.35"

node_groups = {
  general = {
    instance_types = ["t3.large"]
    capacity_type  = "ON_DEMAND"
    scaling_config = {
      desired_size = 2
      max_size     = 4
      min_size     = 1
    }
  }
}
