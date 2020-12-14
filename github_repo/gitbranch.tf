resource "github_branch" "develop" {
  repository    = github_repository.repo.name
  branch        = "development"
  
}

resource "github_branch_default" "setDefault" {
  branch = github_branch.develop.branch
  repository = github_repository.repo.name
}