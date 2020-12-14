resource "github_repository" "repo" {
  name        = var.project_name
  description = var.project_desc

  visibility   = "public"
  has_issues   = true
  has_projects = true
  has_wiki     = true

  delete_branch_on_merge = true
  auto_init              = true
  gitignore_template     = var.gitignore
  license_template       = var.gitlicense

}