# Project Documentation

For full project documentation refer to [Infra Docs](https://github.com/N0zz/infra-docs) repository.

## TF Documentation

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                           | Version  |
| ------------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform)       | >= 1.5.3 |
| <a name="requirement_uptimerobot"></a> [uptimerobot](#requirement_uptimerobot) | 0.8.2    |

## Providers

| Name                                                                     | Version |
| ------------------------------------------------------------------------ | ------- |
| <a name="provider_uptimerobot"></a> [uptimerobot](#provider_uptimerobot) | 0.8.2   |

## Resources

| Name                                                                                                                                 | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------ | -------- |
| [uptimerobot_alert_contact.email](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/alert_contact)   | resource |
| [uptimerobot_monitor.custom_monitors](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/monitor)     | resource |
| [uptimerobot_monitor.https_monitors](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/monitor)      | resource |
| [uptimerobot_status_page.status_page](https://registry.terraform.io/providers/vexxhost/uptimerobot/0.8.2/docs/resources/status_page) | resource |

## Inputs

| Name                                                                                                   | Description                                                               | Type       | Default | Required |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------- | ---------- | ------- | :------: |
| <a name="input_dns_records"></a> [dns_records](#input_dns_records)                                     | Creates default monitors and alerts for DNS records created in OVH.       | `map(any)` | n/a     |   yes    |
| <a name="input_infra_environment"></a> [infra_environment](#input_infra_environment)                   | Used to condition resources which should only be created in specific env. | `string`   | n/a     |   yes    |
| <a name="input_uptimerobot_alert_email"></a> [uptimerobot_alert_email](#input_uptimerobot_alert_email) | Email alert to be attached to created monitors.                           | `string`   | n/a     |   yes    |
| <a name="input_custom_monitors"></a> [uptimerobot_custom_monitors](#input_uptimerobot_custom_monitors) | User defined custom monitors.                                             | `map(any)` | n/a     |   yes    |

## Outputs

| Name                                                                             | Description |
| -------------------------------------------------------------------------------- | ----------- |
| <a name="output_alert_contact"></a> [alert_contact](#output_alert_contact)       | n/a         |
| <a name="output_custom_monitors"></a> [custom_monitors](#output_custom_monitors) | n/a         |
| <a name="output_https_monitors"></a> [https_monitors](#output_https_monitors)    | n/a         |
| <a name="output_status_page"></a> [status_page](#output_status_page)             | n/a         |

<!-- END_TF_DOCS -->
