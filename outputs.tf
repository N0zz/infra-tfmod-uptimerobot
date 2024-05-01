output "default_monitors" {
  value = {
    for name, status in uptimerobot_monitor.default_monitors : name => status
  }
}

output "custom_monitors" {
  value = {
    for name, status in uptimerobot_monitor.custom_monitors : name => status
  }
}

output "status_page" {
  value = var.enable_status_page ? uptimerobot_status_page.status_page : []
}

output "alert_contacts" {
  value = {
    for id, value in data.uptimerobot_alert_contact.alert_contacts : id => value.id
  }
}
