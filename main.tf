locals {
  monitor_opts = [
    for dns_record in var.dns_records : {
      url = format("%s%s%s", dns_record.subdomain, (dns_record.subdomain != "" ? "." : ""), dns_record.zone)
    }
  ]
}

data "uptimerobot_alert_contact" "alert_contacts" {
  for_each      = length(var.custom_alert_contacts) > 0 ? var.custom_alert_contacts : var.default_alert_contacts
  friendly_name = each.value
}

resource "uptimerobot_monitor" "default_monitors" {
  for_each = var.enable_default_monitors ? { for k, v in var.dns_records : k => v if v.subdomain != "*" && v.fieldtype != "CAA" } : {}

  url           = format("https://%s", local.monitor_opts[index(keys(var.dns_records), each.key)].url)
  friendly_name = format("HTTPS %s TF", local.monitor_opts[index(keys(var.dns_records), each.key)].url)
  type          = "http"
  interval      = "300"

  dynamic "alert_contact" {
    for_each = data.uptimerobot_alert_contact.alert_contacts
    content {
      id         = alert_contact.value.id
      threshold  = 0
      recurrence = 0
    }
  }
}

resource "uptimerobot_monitor" "custom_monitors" {
  for_each = var.custom_monitors

  url           = each.value.url
  friendly_name = format("%s TF", each.value.name)
  type          = each.value.type
  sub_type      = each.value.sub_type
  interval      = try(each.value.interval, null)
  port          = each.value.sub_type == "custom" ? try(each.value.port, null) : null

  dynamic "alert_contact" {
    for_each = data.uptimerobot_alert_contact.alert_contacts
    content {
      id         = alert_contact.value.id
      threshold  = 0
      recurrence = 0
    }
  }
}

resource "uptimerobot_status_page" "status_page" {
  count         = var.enable_status_page ? 1 : 0
  friendly_name = "Main Status Page"
  sort          = "down-up-paused"
  monitors      = [0]
}