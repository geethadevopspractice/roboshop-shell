source common.sh
component=catalogue
NODEJS

dnf install mongodb-mongosh -y
mongosh --host  mongodb-dev.gdevops65.shop </app/db/master-data.js