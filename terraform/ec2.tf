resource "aws_instance" "control_node" {

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  vpc_security_group_ids = [
    aws_security_group.lab_sg.id
  ]

  associate_public_ip_address = true

  tags = merge(
    local.common_tags,
    {
      Name = "control-node"
      Role = "Control"
    }
  )
}

resource "aws_instance" "managed_node" {

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  vpc_security_group_ids = [
    aws_security_group.lab_sg.id
  ]

  associate_public_ip_address = true

  tags = merge(
    local.common_tags,
    {
      Name = "managed-node"
      Role = "Managed"
    }
  )
}