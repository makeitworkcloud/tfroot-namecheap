# tfroot-namecheap

OpenTofu root that delegates the authoritative nameservers for `xnoto.dev` and `makeitwork.cloud` from Namecheap to their Cloudflare zones. It intentionally does not manage Namecheap DNS records, contacts, or renewal settings.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 1.3 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 5.0 |
| <a name="requirement_namecheap"></a> [namecheap](#requirement\_namecheap) | ~> 2.9 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 5.0 |
| <a name="provider_namecheap"></a> [namecheap](#provider\_namecheap) | ~> 2.9 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [namecheap_domain_records.makeitwork_cloud](https://registry.terraform.io/providers/namecheap/namecheap/latest/docs/resources/domain_records) | resource |
| [namecheap_domain_records.xnoto_dev](https://registry.terraform.io/providers/namecheap/namecheap/latest/docs/resources/domain_records) | resource |
| [cloudflare_zone.makeitwork_cloud](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zone) | data source |
| [cloudflare_zone.xnoto_dev](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zone) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
