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
                sh 'echo $bucketname'
                sh '''#!/bin/bash -l
				
				
				echo "test script"
                ls ./ -al
                ./terraform init  -backend-config="access_key=AKIAIUBQGDAIZRDJZOFQ" -backend-config="secret_key=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" -backend-config="key=runtime/$bucketname/terraform.tfstate" .
                
'''
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
