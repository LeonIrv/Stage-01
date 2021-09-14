pipeline{
    agent any
    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('GOOGLE_APPLICATION_CREDENTIALS')
    }
    tools {
        terraform 'terraform-latest'
    }

    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/LeonIrv/gcp-demo.git'
            }
        }
        stage('Terraform Initialize'){
            steps{
                sh label: '', script: "terraform init";
            }
        }
        stage('Terraform Apply'){
            steps{
                sh label: '', script: "terraform apply --auto-approve" 
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}