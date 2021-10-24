node{
  stage('SCM Checkout') {
    git 'https://github.com/bmarzak/microservice_produit'
  }
  stage('Compile-Pachage') {
    //Get maven path
    def mvnHome = tool name: 'Maven-3.8.2', type: 'maven'
    sh "${mvnHome}/bin/mvn package"
  }

}
  
