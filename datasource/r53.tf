resource "aws_route53_record" "terraform" {
  count = length(var.instance_names)
  zone_id = "Z05521101U68XI4NW84J2"
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform[count.index].private_ip]
  allow_overwrite = true
}