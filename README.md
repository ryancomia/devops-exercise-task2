# devops-exercise-task2

this repo is used to create the aws infrastructure using terraform and github actions

Steps:

1. clone the repo
2. modify the terraform files (adding the needed resources such as vpc,ec2 etc.)
3. commit to 'dev' branch
4. once the dev branch succeeds, create a dev to main pull-request
5. merge changes to main
6. verify the actions output. (you can also find the resource information by logging into the aws account)

note: 
- commit to dev branch will trigger a terraform plan - which lints, validates, and shows which resource actions would be applied
- commit to main will trigger a terraform apply - which spawns the actual resource
- the statefile is stored in a bucket in S3
- any infrastructure changes to must be done through this pipeline