# rds/variables.tf

variable "vpc_id" {
  description = "L'ID du VPC où les ressources RDS seront déployées"
  type        = string
}

# variable "wordpress_security_group_id" {
#   description = "ID du groupe de sécurité des instances WordPress"
#   type        = list(string)
# }

variable "db_instance_class" {
  description = "Type d'instance pour RDS"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Nom de la base de données MySQL"
  type        = string
  #default     = "fabien-database"
}

variable "db_username" {
  description = "Nom d'utilisateur administrateur pour MySQL"
  type        = string
  #default     = "admin"
  sensitive   = true
}

variable "db_password" {
  description = "Mot de passe pour l'utilisateur administrateur de MySQL"
  type        = string
  sensitive   = true
}

variable "db_subnet_group" {
  description = "Nom du groupe de sous-réseaux pour RDS"
  type        = any
  default     = "fabien-DBSubnetGroup"
}

# variable "rds_security_group_id" {
#   description = "Liste des IDs des groupes de sécurité associés à l'instance RDS"
#   type        = list(string)
# }

variable "multi_az" {
  description = "Activer le déploiement Multi-AZ"
  type        = bool
  default     = true
}

variable "subnet_ids" {
  description = "Liste des IDs des sous-réseaux où le RDS sera déployé"
  type        = list(string)
}

variable "create_read_replica" {
  description = "Créer une réplique en lecture (true/false)"
  type        = bool
  default     = false
}

variable "private_subnet_a_id" {
  description = "ID du sous-réseau privé A"
  type        = string
}

variable "private_subnet_b_id" {
  description = "ID du sous-réseau privé B"
  type        = string
}
