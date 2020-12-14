variable "github_token" {
  type = string
}

variable "github_owner" {
  type = string
}

variable "project_name" {
  type = string
}

variable "project_desc" {
  type = string
}

variable "gitlicense" {
  type    = string
  default = "gpl-3.0"
}

variable "gitignore" {
  type = string
}