echo "loading btd commands"

alias btddb_status='heroku pg:info -a big-tech-detective-api'
alias btddb='heroku pg:psql -a big-tech-detective-api'
alias btd_checklogs='heroku logs --tail'
alias btd_updatedb='cat ip_ranges_asn_only.csv | psql `heroku config:get DATABASE_URL -a big-tech-detective-api` -c "COPY test FROM STDIN WITH (FORMAT CSV);"'

alias btd_local_db='psql -d postgres -U alden'
btd_testPost(){
	curl -X POST -H "Content-Type: application/json" -d  "{'ip': $1}" https://big-tech-detective-api.herokuapp.com/ip/
}

export DATABASE_URL="postgresql://alden:antitrustviolations@localhost:5432/cidr_blocks"
export PORT="8080"

export DO_DATABASE_URL="postgresql://cidrblocks:u2ldg0dokxgz2gk4@app-20cc92a4-1221-4bc5-80f1-01cb2d6469a1-do-user-8749106-0.b.db.ondigitalocean.com:25060/cidrblocks?sslmode=require"

# remember to delete the table first to remove duplicates
alias btd_updatedb_do="cat /Users/aljones/Desktop/Blocker/DatabaseUpdate/ip_ranges_asn_only_no_apple.csv | psql ${DO_DATABASE_URL} -c 'COPY cidrs FROM STDIN WITH (FORMAT CSV);'"

alias btd_do_dbconnect="psql $DO_DATABASE_URL"
