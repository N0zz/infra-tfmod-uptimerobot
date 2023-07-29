variable "environment" {
  description = "Used to condition resources which should only be created in specific env."
  type        = string
}
variable "dns_records" {
  description = "Creates default monitors and alerts for DNS records created in OVH."
  type        = map(any)
}

variable "uptimerobot_custom_monitors" {
  description = "User defined custom monitors."
  type        = map(any)
}
variable "uptimerobot_alert_email" {
  description = "Email alert to be attached to created monitors."
  type        = string
} 