    //Lets define a unique label for this build.
    def kubeLabel = "buildpod.${env.JOB_NAME}.${env.BUILD_NUMBER}".replace('-', '_').replace('/', '_')


pipeline {
    options {
        timeout( time:5, unit: 'MINUTES' )
    }
    agent {
        kubernetes {
            label 'ui-npm-build'
            containerTemplate {
                name 'jnlp'
                image 'jenkinsci/jnlp-slave:alpine'
                ttyEnabled true
            }
            containerTemplate {
                name 'docker-builder'
                image 'gcr.io/kaniko-project/executor:debug'
                command '/busybox/cat'
                ttyEnabled true
            }
            containerTemplate {
                name 'json-lint'
                image 'sahsu/docker-jsonlint:latest'
                command 'cat'
                ttyEnabled true
            }
        }
    }
        stages {
            stage('Lint and Build') {
                steps {
                    container('json-lint'){
                        sh '''
                        jsonlint `pwd`/package.json
                        '''
                    }
                    container(name: 'docker-builder', shell: '/busybox/sh' ){
                        sh '''#!/busybox/sh
                         /kaniko/executor -f `pwd`/Dockerfile -c `pwd` --no-push
                       '''
                    }
                }
            }
        }
        // failure should go here       
}


