workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Serverless Framework"]
}

action "Only on master branch" {
  uses = "actions/bin/filter@b2bea07"
  args = "branch master"
}

action "GitHub Action for Serverless Framework" {
  uses = "serverless/github-action@master"
  args = "deploy"
  needs = ["Only on master branch"]
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
}
