# Agent Instructions

OpenTofu root for Make IT Work Cloud Namecheap registrar delegation.

This root manages only the nameserver delegation for `xnoto.dev` and `makeitwork.cloud`. Cloudflare owns zone configuration and DNS records. Do not manage Namecheap DNS records, contacts, renewal settings, API keys, or client IP configuration here.

Use GitHub MCP and PR CI plans as validation authority. `main` is an environment-gated apply path; use scoped branches and PRs, never direct pushes. Shared workflow and runner ownership belongs to `shared-workflows` and `images/tfroot-runner`. Never expose API tokens, state, decrypted SOPS data, or sensitive plans.
