
resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  key_name      = "${var.key1_name}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = "${var.sg_id}"
  tags= {
    Name = "project one"
  }

provisioner "local-exec" {
    command = "echo > /etc/ansible/hosts"
}
provisioner "local-exec" {
    command = "echo ${aws_instance.web.public_ip} > /etc/ansible/hosts"
}

}
data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}


output "instance_id" {
    value = "${aws_instance.web.id}"
}