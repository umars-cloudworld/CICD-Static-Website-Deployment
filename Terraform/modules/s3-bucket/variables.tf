variable "project" {
  type        = string
  description = "Project Name"
} //value comes from main.tf

variable "environment" {
  type        = string
  description = "The Name  of Environment"
} //value comes from main.tf
variable "bucket_name" {
  type        = string
  description = "The Name  of App Bucket"
} //value comes from main.tf