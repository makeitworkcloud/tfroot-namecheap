data "cloudflare_zone" "xnoto_dev" {
  filter = {
    name = "xnoto.dev"
  }
}

data "cloudflare_zone" "makeitwork_cloud" {
  filter = {
    name = "makeitwork.cloud"
  }
}

resource "namecheap_domain_records" "xnoto_dev" {
  domain      = "xnoto.dev"
  nameservers = [for nameserver in data.cloudflare_zone.xnoto_dev.name_servers : lower(nameserver)]
}

resource "namecheap_domain_records" "makeitwork_cloud" {
  domain      = "makeitwork.cloud"
  nameservers = [for nameserver in data.cloudflare_zone.makeitwork_cloud.name_servers : lower(nameserver)]
}

import {
  to = namecheap_domain_records.xnoto_dev
  id = "xnoto.dev"
}

import {
  to = namecheap_domain_records.makeitwork_cloud
  id = "makeitwork.cloud"
}
