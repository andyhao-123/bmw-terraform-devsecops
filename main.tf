# main.tf

# 0. 声明数据源 (Data Source) —— 第四大金刚
# 获取当前执行环境（也就是你刚才 az login 的账号）的上下文信息
data "azurerm_client_config" "current" {}

# 1. 创建资源组
resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-rg"
  location = var.location
}

# 2. 创建虚拟网络
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location     # 核心知识点：隐式依赖
  resource_group_name = azurerm_resource_group.rg.name         # 核心知识点：隐式依赖
}