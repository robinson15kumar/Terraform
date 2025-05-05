# variable "my_rg_name" {
#   description = "Name of the resource group"
#   type        = string
#   default     = "dev-rob-rg"
# }
variable "my_rg_name" {
  description = "Name of the resource group"
  type        = list(string)
  default     = ["dev-rob-rg", "qa-rob-rg", "pre-rob-rg", "prod-rob-rg"]
}