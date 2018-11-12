    //Lets define a unique label for this build.
   // def kubeLabel = "buildpod.${env.JOB_NAME}.${env.BUILD_NUMBER}".replace('-', '_').replace('/', '_')


pipeline {
    options {
        timeout( time:5, unit: 'MINUTES' )
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
                        sh './.ci/scripts/jsonlint.sh'
                    }
                    container(name: 'docker-builder', shell: '/busybox/sh' ){
                        sh './.ci/scripts/buildcontainer.sh'
                    }
                }
            }
        }
        // failure should go here       
}


