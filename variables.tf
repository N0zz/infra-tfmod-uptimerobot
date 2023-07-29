variable "uptimerobot_api_key" {
    description = "Defined in Terraform Cloud variables set."
    type = string
}

variable "dns_records" {
    description = "Define dns records set in OVH DNS zones."
    type = map
}

variable "custom_monitors" {
    type = map
}
variable "uptimerobot_alert_email" {
    type = string
}