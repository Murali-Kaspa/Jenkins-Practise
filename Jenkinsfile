pipeline {
    agent {
        // Use the built-in Jenkins node (master)
        // and specify a custom workspace directory
        any {
            customWorkspace '/var/jenkinsapps/workspace/Practise'
        }
    }

    parameters {
        choice(
            name: 'ENV',
            choices: ['PROD', 'DEV', 'project_branch'],
            description: 'Choose the deployment environment'
        )
    }

    stages {
        stage('Cleaning Workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Printing Message') {
            steps {
                echo "Hello World from ${params.ENV} environment!"
                echo "Testing from ${BRANCH_NAME}"
            }
        }
        stage("Dummy"){
            steps{
                script{
                    def naa="Murali"
                    echo "Heelo ${naa}"
                }
            }
        }
    }
}
