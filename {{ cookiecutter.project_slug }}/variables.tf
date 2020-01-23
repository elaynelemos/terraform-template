variable "name" {
  type        = string
  default     = "{{ cookiecutter.project_slug }}"
  description = "Project slug name."
}
