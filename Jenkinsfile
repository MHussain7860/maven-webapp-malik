pipeline {
    agent any 

    tools{
        maven 'maven3'
    }

    stages{
        stage ('code checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/MHussain7860/maven-webapp-malik.git'
            }
        }

        stage('Build the artifact') {
            steps{
                sh "mvn clean package"
            }
        }
        stage("Building the Docker image") {
            steps{
                sh "docker build -t malikhussain/web-app ."
            }
        }

        stage("Container creating") {
            steps{
                sh "docker run -d --name malikapp-prod -p 8084:8080 malikhussain/web-app "
            }
        }
    }
}
