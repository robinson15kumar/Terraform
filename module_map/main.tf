module "rg" {
  source     = "D:/DevOps/Terraform/module_map/resource_group"
  my_rg_name = var.my_rg_name
}
module "str" {
  source         = "D:/DevOps/Terraform/module_map/storage_account"
  my_storege_acc = var.my_storege_acc
  depends_on     = [module.rg]
}