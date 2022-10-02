variable "storage" {

  type        = number
  description = "Provide storage value for your rds instance"

}

variable "engine" {

  type        = string
  description = "provide name of rds database"

}

variable "identifier" {

  type        = string
  description = "provibe the identifier for rds databse"


}

variable "engine_version" {

  type        = number
  description = "provide engine_version for rds database"
}

variable "instance_class" {

  type        = string
  description = "provide instance_class for rds database"
}

variable "name" {

  type        = string
  description = "provide name for rds database"
}

variable "username" {

  type        = string
  description = "provide username for rds database"

}

variable "password" {

  type        = string
  description = "provide user password for rds database"


}

