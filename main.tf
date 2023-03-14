module "resource_group" {
  source = "./modules/resource_group"
  name = lookup(var.resource_group_name, var.environment_code)
  location = lookup(var.resource_group_location, var.environment_code)
  tags = lookup(var.resource_group_tags, var.environment_code)
}