variable "dns_records" {
    description = "Creates default monitors and alerts for DNS records created in OVH."
    type = map
}

variable "uptimerobot_custom_monitors" {
    description = "User defined custom monitors."
    type = map
}
variable "uptimerobot_alert_email" {
    description = "Email alert to be attached to created monitors."
    type = string
}