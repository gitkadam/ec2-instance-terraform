pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('Access-Key-Id')
        AWS_SECRET_ACCESS_KEY = credentials('Secret-Access-Key')
    }

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/gitkadam/ec2-instance-terraform.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
