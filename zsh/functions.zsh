setdb() {
    export DATABASE_URL=postgresql://`whoami`@localhost:5432/$1
}

listdb() {
    psql -c 'select datname from pg_database where datistemplate=false;'
}

getdb() {
    echo $DATABASE_URL
}
