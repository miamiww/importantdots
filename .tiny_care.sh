echo 'setting up tiny care'
#LIT OF ACCOUNTS TO READ THE LAST TWEET FROM, COMMA SEPARATED
# The first in the list is read by the party parrot.
export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'

# Use this to have a different animal say a message in the big box.
export TTC_SAY_BOX='cat'

# List of folders to look into for `git` commits, comma separated.
export TTC_REPOS='/Users/aljones/ITP/Year1,/Users/aljones/ITP/Year2,/Users/aljones/ITP/Summer2018,/Users/aljones/personal_website,/Users/aljones/Rprojects,/Users/aljones/Projects/,/Users/aljones/ITP/miamiww.github.io'

# The max directory-depth to look for git repositories in
# the directories defined with `TTC_REPOS`. Note that the deeper
# the directory depth, the slower the results will be fetched.
export TTC_REPOS_DEPTH=4

# Location/zip code to check the weather for. Both 90210 and "San Francisco, CA"
# _should_ be ok (the zip code doesn't always work -- use a location
# first, if you can). It's using weather.service.msn.com behind the curtains.
export TTC_WEATHER='New York City'

# Set to false if you're an imperial lover <3
export TTC_CELSIUS=false

# Unset this if you _don't_ want to use Twitter keys and want to
# use web scraping instead.
export TTC_APIKEYS=true

# Refresh the dashboard every 20 minutes.
export TTC_UPDATE_INTERVAL=20

# Turn off terminal title
export TTC_TERMINAL_TITLE=false

# Twitter api keys
export TTC_CONSUMER_KEY=''
export TTC_CONSUMER_SECRET=''
export TTC_ACCESS_TOKEN=''
export TTC_ACCESS_TOKEN_SECRET=''

# Default pomodoro is 20 minutes and default break is 5 minutes.
# You can change these defaults like this.
export TTC_POMODORO=25
export TTC_BREAK=10
