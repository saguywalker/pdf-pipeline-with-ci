pipeline{
    agent none
    stages{
        stage('Show-files'){
            agent{
                docker{
                    image 'alpine'
                }
            }
            steps{
                sh 'ls -R'
            }
        }
        stage('Job-pdfid'){
            agent{
                docker{
                    image 'cincan/pdfid'
                }
            }
            steps{
                sh 'pdfid.sh'
            }
        }
        stage('Job-peepdf'){
            agent{
                docker{
                    image 'cincan/peepdf'
                }
            }
            steps{
                bash 'peepdf-vt.sh'
            }
        }
        stage('Job-jsunpackn'){
            agent{
                docker{
                    image 'cincan/jsunpack-n'
                }
            }
            steps{
                bash 'jsunpackn.sh'
            }
        }
        stage('Job sctest'){
            agent{
                docker{
                    image 'cincan/peepdf'
                }
            }
            steps{
                bash 'jsunpack-n'
            }
        }
    }
}

