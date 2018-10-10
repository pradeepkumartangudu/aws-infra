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
		pwd
                ls ./ -al
		pwd
		echo pwd/$tf_path
		cp /root/.jenkins/workspace/build_buckets_aws/awf_config.tf  /root/.jenkins/workspace/build_buckets_aws/$tf_path
                ./terraform init -var bucketname=$bucketname -backend-config="access_key=$access_key" -backend-config="secret_key=$secret_key" -backend-config="key=runtime/$bucketname/terraform.tfstate" $tf_path
		./terraform plan -var bucketname=$bucketname -var access_key=$access_key -var secret_key=$secret_key -var key=runtime/$bucketname/terraform.tfstate $tf_path
                
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
