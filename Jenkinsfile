pipeline {
  agent any

  triggers {
    //pollSCM('* * * * *')
    githubPush()
  }

  stages {
    stage('Checkout Code') {
      steps {
        git branch: 'main',
        url: 'https://github.com/gomgomshrimp/source-maven-java-spring-hello-webapp.git'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package -DskipTests=true'
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test'
      }
    }
    stage('Deploy') {
      steps {
        deploy adapters: [tomcat9(credentialsId: 'tomcat-manager', url: 'http://15.164.239.64:8080/')], contextPath: null, war: 'target/hello-world.war'
      }
    }
  }
}