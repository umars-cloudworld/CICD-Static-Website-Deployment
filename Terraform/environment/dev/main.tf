data "aws_caller_identity" "current" {}
# S3 Bucket Module
module "s3_bucket" {
  source      = "../../modules/s3-bucket"
  project     = var.project
  environment = var.environment
  bucket_name = var.bucket_name
}
# CodeCommit Module
module "codecommit" {
  source          = "../../modules/codecommit"
  project         = var.project
  environment     = var.environment
  repository_name = var.repository_name
}
# CodePipeline Module
module "codepipeline" {
  source                     = "../../modules/codepipeline"
  project                    = var.project
  environment                = var.environment
  pipeline_name              = var.pipeline_name
  artifacts_bucket           = module.s3_bucket.artifacts_bucket
  codecommit_repository_name = module.codecommit.codecommit_repository_name
  s3_deployment_bucket       = module.s3_bucket.bucket_name
}
