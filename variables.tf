
variable "label_name" {
  description = "Name of the label"
  type        = string
}

variable "label_color" {
  description = "Color of the label"
  type        = string
}

variable "label_desc" {
  description = "Description of the label"
  type        = string
}

variable "repos" {
  description = "List of repos"
  type        = list(string)
}
