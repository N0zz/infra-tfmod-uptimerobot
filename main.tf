locals {
  monitor_opts = [
    for dns_record in var.dns_records : {
      url = format("%s%s%s", dns_record.subdomain, (dns_record.subdomain != "" ? "." : ""), dns_record.zone)
    }
  ]
}

resource "uptimerobot_alert_contact" "email" {
  count         = var.uptimerobot_alert_email != "disabled" ? 1 : 0
  friendly_name = var.uptimerobot_alert_email
  type          = "e-mail"
  value         = var.uptimerobot_alert_email
}
resource "uptimerobot_monitor" "https_monitors" {
  for_each = { for k, v in var.dns_records : k => v if v.subdomain != "*" }

  url           = format("https://%s", local.monitor_opts[index(keys(var.dns_records), each.key)].url)
  friendly_name = format("HTTPS %s TF", local.monitor_opts[index(keys(var.dns_records), each.key)].url)
  type          = "http"
  interval      = "300"

  dynamic "alert_contact" {
    for_each = var.uptimerobot_alert_email != "disabled" ? toset([1]) : toset([])
    content {
      id         = uptimerobot_alert_contact.email[0].id
       threshold  = 0
      recurrence = 0
    }
  }

}

resource "uptimerobot_monitor" "custom_monitors" {
  for_each = var.uptimerobot_custom_monitors

  url           = each.value.url
  friendly_name = format("%s TF", each.value.name)
  type          = each.value.type
  sub_type      = each.value.sub_type
  interval      = try(each.value.interval, null)
  port          = each.value.sub_type == "custom" ? try(each.value.port, null) : null

  dynamic "alert_contact" {
    for_each = var.uptimerobot_alert_email != "disabled" ? toset([1]) : toset([])
    content {
      id         = uptimerobot_alert_contact.email[0].id
      threshold  = 0
      recurrence = 0
    }
  }

}
resource "uptimerobot_status_page" "status_page" {
  count         = var.environment == "prod" ? 1 : 0
  friendly_name = "Main Status Page"
  sort          = "down-up-paused"
  monitors      = [0]
}