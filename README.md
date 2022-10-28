<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-scaffolding/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-scaffolding/actions/workflows/test.yml)

# Terraform ACI Scaffolding Module

Description

Location in GUI:
`Tenants` » `XXX`

## Examples

```hcl
module "aci_scaffolding" {
  source  = "netascode/scaffolding/aci"
  version = ">= 0.0.1"

  name        = "ABC"
  alias       = "ABC-ALIAS"
  description = "My Description"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tenant"></a> [tenant](#input\_tenant) | BGP Peer Prefix Policy's Tenant name. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | BGP Peer Prefix Policy name. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | BGP Peer Prefix Policy description. | `string` | `""` | no |
| <a name="input_action"></a> [action](#input\_action) | BGP Peer Prefix Policy action. Valid values are `reject`, `log`, `restart` or `shut`. | `string` | `"reject"` | no |
| <a name="input_max_prefixes"></a> [max\_prefixes](#input\_max\_prefixes) | BGP Peer Prefix Policy Maximun number of Prefixes. Allowed values: 1-300000.. | `number` | `20000` | no |
| <a name="input_restart_time"></a> [restart\_time](#input\_restart\_time) | BGP Peer Prefix Policy Restart Time. Allowed values are `infinite` or a number between 1 and 65535. | `string` | `"infinite"` | no |
| <a name="input_threshold"></a> [threshold](#input\_threshold) | BGP Peer Prefix Policy Threshold. Allowed values: 1 and 100. | `number` | `75` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `bgpPeerPfxPol` object. |
| <a name="output_name"></a> [name](#output\_name) | BGP Peer Prefix Policy name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest_managed.bgpPeerPfxPol](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/rest_managed) | resource |
<!-- END_TF_DOCS -->