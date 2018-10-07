pipeline { 
    agent any 
    parameters {
        string(
                name: 'bucketname',
                defaultValue:"",
                description: "Where to put the build!")
    }
    stages {
        stage('Build') { 
            steps { 
                load "./paramaters.groovy"
                sh 'echo $bucketname'
		sh 'wget -q https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip'
                sh 'unzip -qo terraform_0.11.8_linux_amd64.zip'
                sh '''#!/bin/bash -l
				
				
		echo "test script"
                ls ./ -al
		cp ./awf_config.tf ./$tf_path
                ./terraform init  -backend-config="access_key=AKIAIUBQGDAIZRDJZOFQ" -backend-config="secret_key=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" -backend-config="key=runtime/$bucketname/terraform.tfstate" $tf_path
                
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
