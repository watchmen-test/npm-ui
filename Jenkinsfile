    //Lets define a unique label for this build.
    def label = "buildpod.${env.JOB_NAME}.${env.BUILD_NUMBER}".replace('-', '_').replace('/', '_')

    //Lets create a new pod template with jnlp and maven containers, that uses that label.
    podTemplate(label: label, containers: [
            containerTemplate(name: 'maven', image: 'maven', ttyEnabled: true, command: 'cat'),
            containerTemplate(name: 'golang', image: 'golang:1.6.3-alpine', ttyEnabled: true, command: 'cat'),       
            containerTemplate(name: 'jnlp', image: 'jenkinsci/jnlp-slave:alpine', ttyEnabled: false)],           
            volumes: [
                    persistentVolumeClaim(mountPath: '/home/jenkins/.mvnrepo', claimName: 'jenkins-mvn-local-repo'),
                    secretVolume(mountPath: '/home/jenkins/.m2/', secretName: 'jenkins-maven-settings')]) {

        //Lets use pod template (refernce by label)
        node(label) {

             stage 'Genearate JSON schema'
             container(name: 'golang') {
              sh """
                ls .
              """
            }
            
            stage 'Build model from JSON schema'
            container(name: 'maven') {
              sh 'ls .'
            }
        }
    }
