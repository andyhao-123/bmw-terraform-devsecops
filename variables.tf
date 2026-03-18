# variables.tf

variable "prefix" {
  type        = string
  description = "资源命名前缀，建议用大家名字的拼音首字母 (例如: bmw-lab1)"
  default     = "bmw-demo"
}

variable "location" {
  type        = string
  description = "Azure 21Vianet 部署区域"
  default     = "chinanorth3" # 中国北部 3 (北京) Region
}

variable "subscription_id" {
  type        = string
  description = "2f82de0f-f236-4e28-a9a7-58f5d2e8ce4c"
}