workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Serverless Framework"]
}

action "GitHub Action for Serverless Framework" {
  uses = "./serverless-action"
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
}
