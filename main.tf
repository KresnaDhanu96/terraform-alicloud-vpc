provider "alicloud" {
  access_key = "LTAI4GE1PzPrDHeB3U29BVzD"
  secret_key = "eko4ZehNWjOvX9Feowjjh3yi1btO0s"
  region  = "cn-hangzhou"
}


module "vpc" {
  source  = "/"
  access_key = "LTAI4GE1PzPrDHeB3U29BVzD"
  secret_key = "eko4ZehNWjOvX9Feowjjh3yi1btO0s"
  region  = "cn-hangzhou"

  vpc_name = "complete-example"

  vpc_cidr = "10.10.0.0/16"

  availability_zones = ["cn-hangzhou-e", "cn-hangzhou-f", "cn-hangzhou-g"]
  vswitch_cidrs      = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]

  vpc_tags = {
    Owner       = "user"
    Environment = "staging"
    Name        = "complete"
  }

  vswitch_tags = {
    Project  = "Secret"
    Endpoint = "true"
  }
}

# This vpc and other resources won't be created
module "vpc_zero" {
  source  = "/"
  access_key = "LTAI4GE1PzPrDHeB3U29BVzD"
  secret_key = "eko4ZehNWjOvX9Feowjjh3yi1btO0s"
  region  = "cn-hangzhou"

  create   = false
  vpc_name = "complete-example"

  vpc_cidr = "10.10.0.0/16"

  availability_zones = ["cn-hangzhou-e", "cn-hangzhou-f", "cn-hangzhou-g"]
  vswitch_cidrs      = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}
© 2020 GitHub, Inc.
