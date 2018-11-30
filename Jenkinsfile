    //Lets define a unique label for this build.
   // def kubeLabel = "buildpod.${env.JOB_NAME}.${env.BUILD_NUMBER}".replace('-', '_').replace('/', '_')

pipeline {
    options {
        timeout( time:15, unit: 'MINUTES' )
    }
    agent {
        kubernetes {
            label 'ui-npm-build'
            yamlFile '.ci/pods.yaml'
        }
    }
        stages {
            stage('Lint and Build') {
                steps {
                    container('json-lint'){
                        sh '.ci/scripts/jsonlint.sh'
                    }
                    container(name: 'docker-builder', shell: '/busybox/sh' ){
                        sh readFile('.ci/scripts/buildcontainer.sh')
                    }
                }
            }

            stage('Create tag') {
                steps {
                    // For SSH private key authentication, try the sshagent step from the SSH Agent plugin.
<<<<<<< HEAD
                    sshagent (credentials: ['id-rsa-priv-key-ui-npm']) {
                        sh '.ci/scripts/tagcontainer.sh'
=======
                    withCredentials([usernamePassword(credentialsId: 'a40be4ae-255e-4aa0-8405-b062181041fb', usernameVariable: 'GIT_USERNAME', passwordVariable: 'GIT_PASSWORD')]) {
                        sh readFile('.ci/scripts/tagcontainer.sh')
>>>>>>> cbd7bc85a7a0ace3432526b62c18b8a56f951eec
                    }
                    
                }
            }

        }
        // failure should go here       
}


