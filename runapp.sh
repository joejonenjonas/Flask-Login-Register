#!/bin/bash
#cd Flask-Login-Register
echo "FROM python" > Dockerfile
echo "RUN pip install flask" >> Dockerfile
#toevoegen nodige website onderdelen.
echo "COPY ./backend /home/myapp/backend/" >> Dockerfile
echo "COPY ./frontend /home/myapp/frontend/" >> Dockerfile
echo "COPY ./backend/app.py /home/myapp/" >> Dockerfile
#open poort 8082
echo "EXPOSE 8082" >> Dockerfile
#installeren van requirements
#echo "COPY ./requirements.txt /home/myapp/requirements.txt" >> Dockerfile
echo "RUN pip install -r requirements.txt" >> Dockerfile
#cmd command om python script uit te voeren
echo "CMD python3 /home/myapp/app.py" >> Dockerfile

docker build -t app .
docker run -t -d -p 3000:3000 --name loginapp app
docker ps -a 