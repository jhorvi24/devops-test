resource "aws_route53_zone" "dns" {
    name = "cafecloud.xyz"
}

data "aws_acm_certificate" "ssl" {
  domain = "*.cafecloud.xyz"  
  statuses = ["ISSUED"]
  
}



