terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}

provider "aws"{
region=var.urregion
}

resource "aws_vpc" "mainvpc" {
  cidr_block = var.urvpccidr
  tags = {
  Name= "mynewvpc"
  }
}


