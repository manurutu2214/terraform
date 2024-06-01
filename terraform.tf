provider aws{
    region="ap-south-1"
    access_key = "AKIA6GBMFKO2HBAM2E6D"
    secret_key = "fXcVoEFWSOiVUyNsSf8mQBTc3416g0wYAMnoRBbH"
}

resource "aws_instance" "myec2" {
  
    ami = data.aws_ami.example.id
    instance_type = "t2.micro"
}

data "aws_ami" "example" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*"]
  }
}
