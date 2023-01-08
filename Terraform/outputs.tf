output "vpc_id" {
  value = module.vpc.vpc_id
}
output "default_route_table_id" {
  value = aws_vpc.aws_vpc.default_route_table_id
}
output "public" {
  value = aws_subnet.public.id
}
output "private" {
  value = aws_subnet.private.id
}
output "db" {
  value = aws_subnet.db.id
}
output "id" {
  value = module.NAT.aws_nat_gateway.id
}
output "id" {
  value = module.IGW.aws_internet_gateway.id
}