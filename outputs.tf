output "https_monitors" {
  value = {
    for name, status in uptimerobot_monitor.https_monitors : name => https_monitors.status
  }
}
output "custom_monitors" {
  value = {
    for name, status in uptimerobot_monitor.custom_monitors : name => https_monitors.status
  }
}