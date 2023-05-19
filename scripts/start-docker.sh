aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 622361742002.dkr.ecr.us-east-1.amazonaws.com
sudo docker stop msextension
sudo docker rm msextension
sudo docker pull 622361742002.dkr.ecr.us-east-1.amazonaws.com/test:latest
sudo docker run -dit --restart always --network host  -v /var/www:/app/logs --name msextension 622361742002.dkr.ecr.us-east-1.amazonaws.com/test:latest
