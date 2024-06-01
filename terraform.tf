provider aws{
    region="ap-south-1"
    access_key = "AKIA6GBMFKO2PV3X5UJT"
    secret_key = "2pFR6VDeMD/iITO7nFXnD+8s+wOB+1fZp5U/a7bC"
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
