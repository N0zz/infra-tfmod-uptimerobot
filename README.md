# Project Documentation

For full project documentation refer to [Infra Docs](https://github.com/N0zz/infra-docs) repository.

## TF Documentation

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
| [uptimerobot_monitor.custom_monitors](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/monitor) | resource |
| [uptimerobot_monitor.default_monitors](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/monitor) | resource |
| [uptimerobot_status_page.status_page](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/status_page) | resource |
| [uptimerobot_alert_contact.alert_contacts](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/data-sources/alert_contact) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_alert_contacts"></a> [custom\_alert\_contacts](#input\_custom\_alert\_contacts) | n/a | `set(string)` | `[]` | no |
| <a name="input_custom_monitors"></a> [custom\_monitors](#input\_custom\_monitors) | User defined custom monitors. | `map(any)` | n/a | yes |
| <a name="input_default_alert_contacts"></a> [default\_alert\_contacts](#input\_default\_alert\_contacts) | n/a | `set(string)` | <pre>[<br>  "OnePlus 9"<br>]</pre> | no |
| <a name="input_dns_records"></a> [dns\_records](#input\_dns\_records) | Creates default monitors and alerts for DNS records created in OVH. | `map(any)` | n/a | yes |
| <a name="input_enable_default_monitors"></a> [enable\_default\_monitors](#input\_enable\_default\_monitors) | n/a | `bool` | `true` | no |
| <a name="input_enable_status_page"></a> [enable\_status\_page](#input\_enable\_status\_page) | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alert_contacts"></a> [alert\_contacts](#output\_alert\_contacts) | n/a |
| <a name="output_custom_monitors"></a> [custom\_monitors](#output\_custom\_monitors) | n/a |
| <a name="output_default_monitors"></a> [default\_monitors](#output\_default\_monitors) | n/a |
| <a name="output_status_page"></a> [status\_page](#output\_status\_page) | n/a |
<!-- END_TF_DOCS -->
