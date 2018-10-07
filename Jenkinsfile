pipeline { 
    agent any 
    parameters {
        string(
                name: 'bucketname',
                defaultValue:"/home/pencillr/builds/",
                description: "Where to put the build!")
    }
    stages {
        stage('Build') { 
            steps { 
                 sh '''script {
                    build(job: "builder-job",
                        parameters:
                        [string(name: \'BUCKETNAME\', value: "${params.bucketname}")])
                     echo ${params.bucketname}
                 }'''

                
            }
        }
        stage('Test'){
            steps {
                
                echo 'Test' 
            }
        }
        stage('Deploy') {
            steps {
               echo 'Deploy' 
            }
        }
    }
}
