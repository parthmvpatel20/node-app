aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 622361742002.dkr.ecr.us-east-1.amazonaws.com

sudo docker pull 622361742002.dkr.ecr.us-east-1.amazonaws.com/test:latest
sudo docker run -d --name msextension -p 5001:5000 622361742002.dkr.ecr.us-east-1.amazonaws.com/test:latest