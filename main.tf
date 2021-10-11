resource "github_issue_label" "test_repo" {
  for_each   = toset(var.repos)
  repository = each.key
  name       = var.label_name
  color      = var.label_color
}
