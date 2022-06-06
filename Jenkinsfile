pipeline {
  agent any
  stages {
    stage('Build Angular app') 
    {
      steps { sh 'ansible-playbook ansible/build.yaml -i ansible/inventory/hosts.yaml' }
    }

    stage('Build and run container image') 
    {
      steps { sh 'ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml' }
    }

    stage('Upload container image to DockerHub')
    {
      steps { sh 'ansible-playbook ansible/docker-registry.yml -i ansible/inventory/host.yml' }
    }
  }
}