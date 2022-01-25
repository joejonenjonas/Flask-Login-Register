#!/bin/bash
docker container rm -f $(docker ps -a -q)
rm -rf tempdir
mkdir tempdir

cd tempdir
git clone https://github.com/joejonenjonas/Flask-Login-Register.git



#cmd command om python script uit te voeren
echo "FROM python
COPY ./Flask-Login-Register /home/myapp
RUN pip install -r /home/myapp/requirements.txt 
EXPOSE 3000
CMD python3 /home/myapp/backend/app.py" > Dockerfile

pwd
#cd tempdir
docker build -t app .
docker run -t -d -p 3000:3000 --name loginapp app
#docker run -it -d -p 8082:8082 --name loginapp app bash
docker ps -a 
