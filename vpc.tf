resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "terraform-vpc-vcs"
  }
}

resource "aws_subnet" "this" {
  vpc_id = aws_vpc.this.id
  cidr_block = "10.0.0.0/18"
}