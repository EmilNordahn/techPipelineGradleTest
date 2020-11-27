pipeline {
    agent any

    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                sh 'ls -a'
                sh 'cd ./ && ls -a'
                sh 'git update-index --chmod +x gradlew'
                sh 'gradlew assemble'
            }
        }
        stage('Test') {
            steps {
                echo 'Test stage is here'
                sh './gradlew test'
            }
        }
    }
}