resource "aws_launch_configuration" "web" {
  name_prefix = "web-"
image_id = "ami-0b6384181e01b87fb" 
  instance_type = "t2.micro"
  key_name = "test2"
security_groups = [ "${aws_security_group.ec2-sg.id}" ]
  associate_public_ip_address = true
  user_data = "${file("data.sh")}"
lifecycle {
    create_before_destroy = true
  }
}