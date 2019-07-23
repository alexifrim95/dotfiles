setdb() {
    export DATABASE_URL=postgresql://`whoami`@localhost:5432/$1
}

listdb() {
    psql -c 'SELECT datname FROM pg_database WHERE datistemplate=false;'
}

getdb() {
    echo $DATABASE_URL
}

truncate() {
    getdb
    psql -c 'TRUNCATE TABLE '$1' CASCADE;'
}
