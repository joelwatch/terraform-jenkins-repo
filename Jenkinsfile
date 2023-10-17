pipeline {
    agent any

    stages {
        stage ("Checkout") {
            steps {
                checkout scm
            }
        }

        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure")
            }
        }

        stage ("Plan") {
            steps {
                sh ("terraform plan")
            }
        }

        stage ("Action") {
            steps {
                echo "Terraform action in --> ${action}"
                sh ("terraform ${action} --auto-approve")
            }
        }
    }
}