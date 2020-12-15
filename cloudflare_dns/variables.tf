variable "email" {
  type = string
}
variable "api_key" {
  type      = string
  sensitive = true
}

variable "dnsentries" {
  type        = map(any)
  description = "Each DNS Entry to add to Cloudflare"
}

variable "domain" {
  type = string
}
variable "dnsname" {
  type = string
}
variable "dnsvalue" {
  type = string
}
variable "dnstype" {
  type = string
}
