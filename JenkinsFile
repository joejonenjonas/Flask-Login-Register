pipeline {
    agent any
    stages {
        stage("Git clone"){
            steps{
                git branch: 'main', url: 'https://github.com/joejonenjonas/Flask-Login-Register.git'
            }
            #python jenkins commands die naar de locatie gaan en de python app.py openen zodat flask website runt.
        }
        stage("Start App"){
            steps{
                bat '''ls -l
cd ./Flask-Login-Register/backend/
python3 app.py'''
            }
        }
    }
}