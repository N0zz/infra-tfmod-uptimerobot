variable "dns_records" {
  description = "Creates default monitors and alerts for DNS records created in OVH."
  type        = map(any)
}

variable "custom_monitors" {
  description = "User defined custom monitors."
  type        = map(any)
}

variable "enable_status_page" {
  type    = bool
  default = false
}

variable "enable_default_monitors" {
  type    = bool
  default = true
}

variable "default_alert_contacts" {
  type    = set(string)
  default = ["OnePlus 9"]
}

variable "custom_alert_contacts" {
  type    = set(string)
  default = []
}