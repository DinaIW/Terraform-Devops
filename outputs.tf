# outputs.tf

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids  # Utilisation du bon output
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids  # Utilisation du bon output
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}
