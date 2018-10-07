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
                sh './terraform -vesrion'
                sh '''echo "test script"

./terraform -version
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
