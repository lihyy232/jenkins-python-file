pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                sh '''
                    git config --global http.version HTTP/1.1
                    git config --global http.postBuffer 524288000
                '''
                checkout scm
                sh 'cat Dockerfile'
            }
        }
        
        stage('Build') {
            steps {
                sh 'docker build -t hello-world:latest .'
            }
        }
        
        stage('Run') {
            steps {
                sh '''
                    docker stop hello-world || true
                    docker rm hello-world || true
                    docker run --name hello-world hello-world:latest
                    docker logs hello-world
                '''
            }
        }
    }
}
