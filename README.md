# terraform-jenkins-repo

create s3 bucket for storing TF state file
create dynamo db table for provisionning lock capacity (store logs)
create jenkins with amazon linus 20.4, instance type t2.micro, security group open to ports 22 and 8080
attache a role with ec2fullacess, s3fullacess and dynamodbfullacess
ssh in jenkins server and install terraform 
downloads jenkins file  (wget https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_linux_amd64.zip)
unzip the file an change location (unzip terraform_*_linux_amd64.zip
sudo mv terraform /usr/local/bin/)
create a terraform pipeline job, select pipeline 
go to This project is parameterized click
Add Parameter and select Choice parameter
put a name: action
Choice: - plan
        - apply
        - destroy
go ot pipeline
select pipeline script
select "HELLO WORD"
and modify it : pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
            }
        }
        
        stage ("init") {
            steps {
                sh ("terraform init -reconfigure")
            }
        }
        
        stage ("plan") {
            steps {
                sh ("terraform plan")
            }
        }
    }
}
click on pipeline syntaxe
it will open a new page
click on Sample Step
choose Checkout from version control

provide the repo url

specify the branch name (main or master or ...)
click on generate pipeline script
copy the script
go to the pipeline script and paste it after stage ("checkout") in the steps line
click on apply and save it
run the pipeline job


