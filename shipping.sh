  if [ -z "$1" ] ; then
    echo Input Password is missing
    exit
  fi


  source common.sh
  component=shipping
  MAVEN

  dnf install mysql -y
for file in schema app-user app-user ; do
   mysql -h mysql-dev.gdevops65.shop -uroot -p$1 < /app/db/$file.sql
done