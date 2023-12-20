variable "AWS_REGION" {    
    default = "eu-west-2"
}


provider "aws" {
    region = "${var.AWS_REGION}"
}


resource "aws_vpc" "main" {
 cidr_block = "30.0.0.0/16"
 
 tags = {
   Name = "Project VPC test"
 }
}

