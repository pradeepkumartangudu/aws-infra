pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
            sh 'ls /home/ec2-user/manideep-aws -al'
            sh 'cat /home/ec2-user/main.txt '
            sh 'pwd '
            sh 'cp /home/ec2-user/manideep-aws/pradeep.pem /root/.jenkins/workspace/build_buckets_aws/pradeep.pem '
                sh 'ls /root/.jenkins/workspace/build_buckets_aws/ -al'
                sh 'cp -r /home/ec2-user/manideep-aws/ /root/.jenkins/workspace/build_buckets_aws/manideep-aws '
            archiveArtifacts artifacts: 'pradeep.pem'
                sh 'wget -q https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip'
                sh 'unzip -qo terraform_0.11.8_linux_amd64.zip'
                sh '''echo "test script"
./terraform init  -var 'access_key=AKIAJWOE3M6AXWVJJIRQ' -var 'secret_key=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' -backend-config="access_key=AKIAJWOE3M6AXWVJJIRQ" -backend-config="secret_key=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" ./aws_config.tf
./terraform -version
#./terraform init -backend-config="key=runtime/terraform.tfstate" ./
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
