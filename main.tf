resource "aws_instance" "this" {
  count = var.instance_count
  ami = var.instance_ami
  instance_type = var.instance_type
  subnet_id = var.instance_subnet_id
  vpc_security_group_ids = [var.instance_sg_id]
}