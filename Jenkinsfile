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
                load "./paramaters.groovy"
                 echo "Hello" 
                sh 'echo "${params.bucketname}"'
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
