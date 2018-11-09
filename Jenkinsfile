podTemplate(
    name: 'test-pod2',
    label: 'test-pod2',
    containers: [
        containerTemplate(name: 'golang', image: 'golang:1.9.4-alpine3.7'),
        
    ],
    {
        //node = the pod label
        node('test-pod2'){
            //container = the container label
            stage('Build'){
                container('golang'){
                    // This is where we build our code.
                }
            }
        }
    })