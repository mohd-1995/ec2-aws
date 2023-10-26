#Creating Route Table
resource "aws_route_table" "route" {
    vpc_id = "${aws_vpc.myvpc.id}"
route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.myigw.id}"
    }
tags = {
        Name = "Route to internet"
    }
}
resource "aws_route_table_association" "rt1" {
    subnet_id = "${aws_subnet.subnet1.id}"
    route_table_id = "${aws_route_table.route.id}"
}
resource "aws_route_table_association" "rt2" {
    subnet_id = "${aws_subnet.subnet1.id}"
    route_table_id = "${aws_route_table.route.id}"
}
