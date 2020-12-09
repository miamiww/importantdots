echo "loading btd commands"

alias btddb_status='heroku pg:info -a big-tech-detective-api'
alias btddb='heroku pg:psql -a big-tech-detective-api'
alias btd_checklogs='heroku logs --tail'
alias btd_updatedb='cat ip_ranges_asn_only.csv | psql `heroku config:get DATABASE_URL -a big-tech-detective-api` -c "COPY test FROM STDIN WITH (FORMAT CSV);"'

alias btd_local_db='psql -d postgres -U alden'

export DATABASE_URL="postgresql://alden:antitrustviolations@localhost:5432/cidr_blocks"
export PORT="8080"
