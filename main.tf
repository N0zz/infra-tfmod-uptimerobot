locals {
    monitor_opts = [
        for dns_record in var.dns_records: {
            url = format("%s%s%s", dns_record.subdomain, (dns_record.subdomain != "" ? "." : ""), dns_record.zone)
        }
    ]
}

resource "uptimerobot_alert_contact" "email" {
    friendly_name = "Email Alert"
    type          = "email"
    value         = var.uptimerobot_alert_email
}
resource "uptimerobot_monitor" "https_monitors" {
    for_each = var.dns_records

    url           = format("https://%s", local.monitor_opts[index(keys(var.dns_records), each.key)].url)
    friendly_name = format("HTTPS %s TF", local.monitor_opts[index(keys(var.dns_records), each.key)].url)
    type          = "http"
    interval      = "300"
}

resource "uptimerobot_monitor" "custom_monitors" {
    for_each = var.custom_monitors

    url           = each.value.url
    friendly_name = format("%s TF", each.value.name)
    type          = each.value.type
    sub_type      = each.value.sub_type
    interval      = try(each.value.interval, null)
    port          = each.value.sub_type == "custom" ? try(each.value.port, null) : null
}