pipeline {
    agent any
    triggers {
        githubPush()
    } 
    parameters {
        booleanParam (name: 'executeTests', defaultValue: true, description: '')
    }
    stages {
        stage ("Build") {
            steps {
                echo 'Building project'
            }
        }
        stage ("UnitTest") {
            steps {
                echo 'Running Unit Tests'
            }
        }
        stage ("UITests") {
            when { //solo ejecuta los steps si se cumple esta condicion
                expression {
                   params.executeTests
                }
            }
            steps {
                script {
                    build job: 'ParallelRunner',
                    parameters: [
                        [ $class: 'StringParameterValue', name: 'banner', value: 'safeway'],
                        [ $class: 'BooleanParameterValue', name: 'executeTests', value: true]
                    ]
                }
            }
        }
    }
    
}