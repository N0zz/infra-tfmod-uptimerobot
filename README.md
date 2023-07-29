<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.3 |
| <a name="requirement_uptimerobot"></a> [uptimerobot](#requirement\_uptimerobot) | 0.8.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_uptimerobot"></a> [uptimerobot](#provider\_uptimerobot) | 0.8.2 |

## Resources

| Name | Type |
|------|------|
| [uptimerobot_alert_contact.email](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/alert_contact) | resource |
| [uptimerobot_monitor.custom_monitors](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/monitor) | resource |
| [uptimerobot_monitor.https_monitors](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/monitor) | resource |
| [uptimerobot_status_page.status_page](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/status_page) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_records"></a> [dns\_records](#input\_dns\_records) | Creates default monitors and alerts for DNS records created in OVH. | `map(any)` | n/a | yes |
| <a name="input_infra_environment"></a> [infra\_environment](#input\_infra\_environment) | Used to condition resources which should only be created in specific env. | `string` | n/a | yes |
| <a name="input_uptimerobot_alert_email"></a> [uptimerobot\_alert\_email](#input\_uptimerobot\_alert\_email) | Email alert to be attached to created monitors. | `string` | n/a | yes |
| <a name="input_uptimerobot_custom_monitors"></a> [uptimerobot\_custom\_monitors](#input\_uptimerobot\_custom\_monitors) | User defined custom monitors. | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alert_contact"></a> [alert\_contact](#output\_alert\_contact) | n/a |
| <a name="output_custom_monitors"></a> [custom\_monitors](#output\_custom\_monitors) | n/a |
| <a name="output_https_monitors"></a> [https\_monitors](#output\_https\_monitors) | n/a |
| <a name="output_status_page"></a> [status\_page](#output\_status\_page) | n/a |
<!-- END_TF_DOCS -->