terraform {
  required_version = "> 1.3"

  backend "s3" {}

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0"
    }
    namecheap = {
      source  = "namecheap/namecheap"
      version = "~> 2.9"
    }
    sops = {
      source = "carlpett/sops"
    }
  }
}

provider "cloudflare" {}

provider "namecheap" {
  user_name = "makeitworkcloud"
  api_user  = "makeitworkcloud"
}

provider "sops" {}
