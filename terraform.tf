provider aws{

}

resource "aws_instance" "myec2" {
  
    ami = data.aws_ami.example.id
    instance_type = "t2.nano"
}

data "aws_ami" "example" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*"]
  }
}
