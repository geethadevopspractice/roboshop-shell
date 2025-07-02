NODEJS() {
  dnf module disable nodejs -y
  dnf module enable nodejs:20 -y
  dnf install nodejs -y
  cp ${component}.service /etc/systemd/system/cart.service

  useradd roboshop
  mkdir /app
  curl -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/${component}-v3.zip
  cd /app
  unzip /tmp/user.zip
  cd /app
  npm install

  systemctl daemon-reload
  systemctl enable ${component}
  systemctl start ${component}
}