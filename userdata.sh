#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/malitekin/Last_chance.git
cd /home/ubuntu/malitekin/Last_chance
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/malitekin/Last_chance/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80