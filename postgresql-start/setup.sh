echo "Begin database setup..."

psql -v dbuser=$DB_USERNAME \
     -v dbpassword=$DB_PASSWORD \
     -v dbname=$POSTGRESQL_DATABASE \
     -v dbadmin=$POSTGRESQL_USER \
     -c "CREATE USER $DB_USERNAME WITH PASSWORD '$DB_PASSWORD';" \
     -f /opt/app-root/src/postgresql-start/setupdb.sql
     
