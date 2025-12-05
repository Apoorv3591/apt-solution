#!/bin/bash
yum update -y
yum install -y python3 git
pip3 install flask


cat <<EOF > /home/ec2-user/server.py
from flask import Flask
app = Flask(__name__)
@app.route("/")
def index():
    return "Hello from private EC2!"
@app.route("/health")
def health():
    return "ok"
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
EOF

nohup python3 /home/ec2-user/server.py &
