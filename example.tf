provider "aws" {
  profile = "lacasera"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"

  provisioner "local-exec" {
  command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
}

}