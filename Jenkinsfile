pipeline {
    agent any
    stages {
        stage("start build") {
            steps {
                openshiftBuild bldCfg: 'flask-app-s2i', commitID: 'master', namespace: 'flask-app', showBuildLogs: 'true'
            }
        }
        stage("start deploy") {
            steps {
                openshiftDeploy depCfg: 'flask-app-s2i', namespace: 'flask-app'
            }
        }
    }
}