## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 4.16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_issue_label.test_repo](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/issue_label) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_label_color"></a> [label\_color](#input\_label\_color) | Color of the label | `string` | n/a | yes |
| <a name="input_label_desc"></a> [label\_desc](#input\_label\_desc) | Description of the label | `string` | n/a | yes |
| <a name="input_label_name"></a> [label\_name](#input\_label\_name) | Name of the label | `string` | n/a | yes |
| <a name="input_repos"></a> [repos](#input\_repos) | List of repos | `list(string)` | n/a | yes |

## Outputs

No outputs.
