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
                 script {
                    build(job: "builder-job",
                        parameters:
                        [string(name: 'BUCKETNAME', value: "${params.bucketname}")])
                 
            sh 'ls /home/ec2-user/manideep-aws -al'
            sh 'cat /home/ec2-user/main.txt '
            sh 'pwd '
            sh 'cp /home/ec2-user/manideep-aws/pradeep.pem /root/.jenkins/workspace/build_buckets_aws/pradeep.pem '
                sh 'ls /root/.jenkins/workspace/build_buckets_aws/ -al'
                sh 'cp -r /home/ec2-user/manideep-aws/ /root/.jenkins/workspace/build_buckets_aws/manideep-aws '
            archiveArtifacts artifacts: 'pradeep.pem'
                sh 'wget -q https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip'
                sh 'unzip -qo terraform_0.11.8_linux_amd64.zip'
                sh './terraform init  -backend-config="access_key=AKIAIUBQGDAIZRDJZOFQ" -backend-config="secret_key=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" -backend-config="key=runtime/terraform.tfstate" .'
                sh '''echo "test script"
                ls ./ -al
                ./terraform init  -backend-config="access_key=AKIAIUBQGDAIZRDJZOFQ" -backend-config="secret_key=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" -backend-config="key=runtime/${params.bucketname}terraform.tfstate" .
                
'''
                 }
                
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
