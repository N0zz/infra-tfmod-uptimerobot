output "https_monitors" {
  value = {
    for name, status in uptimerobot_monitor.https_monitors : name => status
  }
}
output "custom_monitors" {
  value = {
    for name, status in uptimerobot_monitor.custom_monitors : name => status
  }
}