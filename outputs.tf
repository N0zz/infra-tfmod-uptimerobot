output "https_monitors" {
    value = uptimerobot_monitor.https_monitors
    sensitive = true
}

output "custom_monitors" {
    value = uptimerobot_monitor.custom_monitors
    sensitive = true
}