# ec2-aws
This repository is used to store code to launch my portfolio website using AWS infrastructure and hosting an instance. This was all automated using terraform. 
I used a VPC with public subnets, autoscaling group and elastic load balancer to manage traffic and i also used docker to push my html website onto a dockerhub repo and pulled onto my ec2 instance which i used to host my hmtl website so everytime i pushed a image onto dockerhub my ec2 pulls the image from it and automatically updates my html website creating CI/CD network.


Click **HERE** to view my website
http://moesportfolio.com
>>>>>>> ae23dcb73ab37ac396f7d90fb4b1ce8b81dfdbe1
