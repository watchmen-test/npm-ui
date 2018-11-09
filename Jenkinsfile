podTemplate(
    name: 'test-pod',
    label: 'test-pod',
    containers: [
        containerTemplate(name: 'golang', image: 'golang:1.9.4-alpine3.7'),
        
    ],
    {
        //node = the pod label
        node('test-pod'){
            //container = the container label
            stage('Build'){
                container('golang'){
                    // This is where we build our code.
                }
            }
        }
    })