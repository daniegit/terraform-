

resource "aws_db_instance" "default" {
  allocated_storage   = var.storage
  engine              = var.engine
  identifier          = var.identifier
  engine_version      = var.engine_version
  instance_class      = var.instance_class
  name                = var.name
  username            = var.username
  password            = var.password
  skip_final_snapshot = true
  publicly_accessible = true

}

