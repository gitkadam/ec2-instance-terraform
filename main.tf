provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"  # Specify your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0d7a109bf30624c99"  # Specify the AMI ID
  instance_type = "t2.micro"                # Specify the instance type

  tags = {
    Name = "ExampleInstance"  # Specify a name for your instance
  }
}
