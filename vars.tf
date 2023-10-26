# Defining Public Key
variable "public_key" {
  default = "tests.pub"
}
# Defining Private Key
variable "private_key" {
  default = "tests.pem"
}
# Definign Key Name for connection
variable "key_name" {
  default = "tests"
  description = "Name of AWS key pair"
}