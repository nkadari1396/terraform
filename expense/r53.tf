resource "aws_route53_record" "expense" {
  count   = var.instance_names[count.index]
  zone_id = var.zone_id
  name    = "$(var.instance_name[count.inde].${var.domain_name})
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[count.index].private_ip]
}