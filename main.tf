resource "aws_key_pair" "ssh_key" {
    key_name = var.key_name
    public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_security_group" "ec2" {
    name = var.security_group_name
    description  = "Allows SSH and HTTP"

    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"] # Open HTTP for web traffic
    }

    egress{
        from_port = 0
        to_port =0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "ec2_vm" {
        ami = "ami-02a2af70a66af6dfb"
        instance_type = var.instance_type
        key_name = aws_key_pair.ssh_key.key_name
        security_groups = [aws_security_group.ec2.name]


        tags = {
            Name = "ECTofu"
        }
}
