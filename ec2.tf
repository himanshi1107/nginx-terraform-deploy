resource "aws_instance" "nginxserver" {
  ami = "ami-053b12d3152c0cc71" // OS
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public-subnet.id
  vpc_security_group_ids = [ aws_security_group.nginx-sg.id ]
  associate_public_ip_address = true // provide one public ip

  user_data = <<-EOF
            #!/bin/bash
            sudo apt update -y
            sudo apt install nginx -y
            sudo systemctl enable nginx
            sudo systemctl start nginx
            EOF

  tags = {
    Name = "NginxServer"
  }
}