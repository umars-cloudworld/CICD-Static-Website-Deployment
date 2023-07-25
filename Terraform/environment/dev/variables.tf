variable "region" {
  description = "aws region"
}
variable "project" {
  type        = string
  description = "Project Name"
}
variable "environment" {
  type        = string
  description = "The Name  of Environment"
}
variable "bucket_name" {
  type        = string
  description = "The Name  of App Bucket"
}
variable "repository_name" {
  type        = string
  description = "The Name  of ECR repository"
}
variable "pipeline_name" {
  type        = string
  description = "The Name  of CodePipeline"
}
