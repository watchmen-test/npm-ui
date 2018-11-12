    //Lets define a unique label for this build.
   // def label = "buildpod.${env.JOB_NAME}.${env.BUILD_NUMBER}".replace('-', '_').replace('/', '_')

    // //Lets create a new pod template with jnlp and maven containers, that uses that label.
    // podTemplate(label: label, containers: [
    //         containerTemplate(name: 'jnlp', image: 'jenkinsci/jnlp-slave:alpine', ttyEnabled: false),
    //         containerTemplate(name: 'docker-builder', image: 'gcr.io/kaniko-project/executor:debug', command: "/busybox/cat", ttyEnabled: true)]) {

    //     //Lets use pod template (refernce by label)
    //     node(label) {

    //         stage 'Copy src code to pvc'
    //         container(name: 'jnlp'){
    //             checkout scm
    //         }

    //          stage 'Build image'
    //          container(name: 'docker-builder', shell: '/busybox/sh' ) {
    //            sh '''#!/busybox/sh
    //                 /kaniko/executor -f `pwd`/Dockerfile -c `pwd` --no-push
    //                 '''
    //         }
    //     }
    // }

pipeline {
    agent {
        kubernetes {
            label 'kube-logo'
            containerTemplate {
                name 'jnlp'
                image 'jenkinsci/jnlp-slave:alpine'
                ttyEnabled true
            }
            containerTemplate {
                name 'docker-builder'
                image 'gcri.io/kaniko-project/executor:debug'
                command '/busybox/cat'
                ttyEnabled true
            }
        }
    }
        stages {
            stage 'stage test' {
                container 'jnlp' {
                    sh 'echo "test"'
                }
            }
        }
}


