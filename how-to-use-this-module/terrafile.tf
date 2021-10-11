provider "github" {
  owner = "teste-team-module"
}

locals {
  labels = [
    {
      name  = "Dificuldade: Avançado"
      color = "fef2c0"
      description = " "
      repos = data.github_repositories.mentoriaiac_all_repos.names
    },
	    {
      name  = "Dificuldade: Iniciante"
      color = "0e8a16"
      description = " "
      repos = data.github_repositories.mentoriaiac_all_repos.names
    },
	    {
      name  = "Tema: Nomad"
      color = "84b6eb"
      description = " "
      repos = data.github_repositories.mentoriaiac_all_repos.names
    },
	    {
      name  = "Tema: K8S"
      color = "e99695"
      description = " "
      repos = data.github_repositories.mentoriaiac_all_repos.names
    },	
	{
      name  = "Tema: Packer"
      color = "5319e7"
      description = " "
      repos = data.github_repositories.mentoriaiac_all_repos.names
    },
	    {
      name  = "Tema: Docker"
      color = "3495eb"
      description = " "
      repos = data.github_repositories.mentoriaiac_all_repos.names
    },
	    {
      name  = "Tema: Github Actions"
      color = "79ab7c"
      description = " "
      repos = data.github_repositories.mentoriaiac_all_repos.names
    },
	    {
      name  = "Tema: Ansible"
      color = "a379ab"
      description = " "
      repos = data.github_repositories.mentoriaiac_all_repos.names
    },	
	{
      name  = "Tema: Terraform"
      color = "fcce26"
      description = " "
      repos = data.github_repositories.mentoriaiac_all_repos.names
    }
	]
}

data "github_repositories" "mentoriaiac_all_repos" {
  query = "org:teste-team-module language:all"
}


module "github_team_developers" {
  source      = "../."
  for_each    =  { for label in local.labels : label.name => label }
  repos       = each.value.repos
  label_name  = each.value.name
  label_color = each.value.color
  label_desc  = each.value.description
}

