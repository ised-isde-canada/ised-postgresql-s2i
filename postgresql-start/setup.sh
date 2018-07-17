echo "Begin database setup..."

sed -i -e "s/:dbpassword/$DB_PASSWORD/g" /opt/app-root/src/postgresql-start/setupdb.sql

psql -v dbuser=$DB_USERNAME \
     -v dbpassword=$DB_PASSWORD \
     -v dbname=$POSTGRESQL_DATABASE \
     -v dbadmin=$POSTGRESQL_USER \
     -f /opt/app-root/src/postgresql-start/setupdb.sql
     
