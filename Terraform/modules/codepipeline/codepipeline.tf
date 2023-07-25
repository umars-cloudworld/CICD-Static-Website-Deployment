data "aws_caller_identity" "current" {}
resource "aws_codepipeline" "pipeline" {
  name     = "${var.project}-${var.environment}-${var.pipeline_name}"
  role_arn = aws_iam_role.pipeline_role.arn

  artifact_store {
    location = var.artifacts_bucket
    type     = "S3"
  }
  stage {
    name = "Source"

    action {
      name             = "SourceAction"
      category         = "Source"
      owner            = "AWS"
      provider         = "CodeCommit"
      version          = "1"
      output_artifacts = ["SourceArtifact"]

      configuration = {
        RepositoryName = var.codecommit_repository_name
        BranchName     = "master"
      }
    }
  }

  stage {
    name = "Deploy"

    action {
      name            = "DeployAction"
      category        = "Deploy"
      owner           = "AWS"
      provider        = "S3"
      input_artifacts = ["SourceArtifact"]
      version         = "1"
      configuration = {
        BucketName = var.s3_deployment_bucket
        Extract    = "true"
      }
    }
  }
}