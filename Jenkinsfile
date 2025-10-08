node {
    def mavenHome = tool name: 'Ekart-maven'
    stage("git checkout")
    git branch: 'development', url: 'https://github.com/MHussain7860/maven-webapp-malik.git'

    stage ("Build artifact")
   sh "${mavenHome}/bin/mvn clean package"
    stage ("SonarQube Report")
    sh "${mavenHome}/bin/mvn clean package sonar:sonar"
    stage ("Nexus report")
    sh "${mavenHome}/bin/mvn clean deploy sonar:sonar"
     stage('Deploy to Tomcat') 
    echo "Deploying WAR file using curl..."

    sh """
        curl -u admin:admin123 \
        --upload-file /var/lib/jenkins/workspace/ordermanagement-dev/target/maven-web-application.war \
        "http://3.90.188.216:8080//manager/text/deploy?path=/maven-web-application&update=true"
    """
}
