pipeline {
    agent any 

    tools{
        maven 'maven3'
    }

    stages{
        stage ('code checkout') {
            steps {
                git branch: 'prod', url: 'https://github.com/MHussain7860/maven-webapp-malik.git'
            }
        }

        stage('Build the artifact') {
            steps{
                sh "mvn clean package"
            }
        }
        stage("Building the Docker image") {
            steps{
                sh "docker build -t malikhussain/web-app-prod:v3 ."
            }
        }

        stage("Container creating") {
            steps{
                sh "docker run -d --name malikapp-prod2 -p 8085:8080 malikhussain/web-app-prod:v3 "
            }
        }
    }
}
