node {
    def mavenHome = tool name: 'Ekart-maven'

    stage ("git checkout")
    git branch: 'development', url: 'https://github.com/MHussain7860/maven-webapp-malik.git'

    stage ("build the artifact")
    sh "${mavenHome}/bin/mvn clean package"

    stage ("SonarQube Report")
    sh "${mavenHome}/bin/mvn clean package sonar:sonar"

    stage ("Nexus Report")
    sh "${mavenHome}/bin/mvn deploy sonar:sonar"
    
    stage ("Deploying war file into a tomcat")

    stage('Deploy to Tomcat') {
    echo "Deploying WAR file using curl..."

    sh """
        curl -u admin:admin123 \
        --upload-file /var/lib/jenkins/workspace/Ekart-pipeline/target/maven-web-application.war \
        "http://3.80.222.145:8080/manager/text/deploy?path=/maven-web-application&update=true"
    """
}



}
