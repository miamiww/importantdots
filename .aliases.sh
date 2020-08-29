echo 'setting aliases'

#alias tmux="TERM=screen-256color-bce tmux"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias camRestart='sudo killall VDCAssistant'
alias makeServer='bash ~/.functions/.server_maker/make_server.sh'
alias chromeTest='open -a "Google Chrome" "http://localhost:3000"'
alias questionRead='cat /Users/aljones/ITP/Year1/Semester2/Detourning/2Week/assignment/yahooQuestions.txt | say -v Fred '
alias gs='git status'
alias deployH='bash ~/ITP/ITPblog/deploy.sh'
alias slidebot800='/Users/aljones/ITP/Year1/Semester2/ElectronicText/final_project/slidebot'
alias ls='ls -GFh'
alias screen="/usr/local/bin/screen"
alias firefox="/Applications/Firefox\ 2.app/Contents/MacOS/firefox"
alias pingu="ping -c 3"
alias noCors="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security"
alias python27="conda activate py27"
alias bashRestart="exec bash -l"
alias freeciv="freeciv-gtk2"
alias tclock="tty-clock -DBc -C 5"

alias appletviewer="/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home/bin/appletviewer"

alias thesis="cd /Users/aljones/ITP/Year2/2Semester/Thesis"
alias cdgo="cd ~/.golang"

alias weather='curl wttr.in/nyc | less'
alias wgetAll='wget --recursive --no-clobber --html-extension --page-requisites --convert-links --no-parent'

alias thelot='mplayer -nocache -afm ffmpeg http://thelot.out.airtime.pro:8000/thelot_b'
alias nts2='mplayer -nocache -afm ffmpeg http://stream-relay-geo.ntslive.net/stream2'
alias nts1='mplayer -nocache -afm ffmpeg http://stream-relay-geo.ntslive.net/stream'
alias rinse='mplayer -nocache -afm ffmpeg http://206.189.117.157:8000/stream'
alias cashmere='mplayer -nocache -afm ffmpeg http://cashmereradio.out.airtime.pro:8000/cashmereradio_b'
alias kmhd='mplayer -nocache -afm ffmpeg http://stream5.opb.org/kmhd_web.mp3'

alias resteyes='termdown 20 && say done'
#alias workcycle='termdown 20m && say rest eyes && termdown 20 && say done '
alias sshB='ssh root@159.65.179.9'


function workcycle(){
	n=0
	while [ $n -le $1 ]
	do 
	     termdown 20m && say rest eyes && termdown 20 && say finished
	     n=$(( n+1 ))
	done
}


alias venvpy3='virtualenv --python=$HOME/.localpython/bin/python3.7'


ITP(){
	cd /Users/aljones/ITP/"$1"/"$2"
}

BIGIP(){
	ASNUM=$1
	shift;
	echo 'Querying WHOIS for $ASNUM'
	echo whois -h whois.radb.net -- \'-i origin $ASNUM\' \| grep route 
}


function min7(){
   EXERCISES=( "Jumping Jacks" "Wall Sit" "Push Ups" "Sit Ups" "Step Ups" "Squats" "Tricep Dips" "Plank" "Running In Place" "Lunges" "Push Ups With Rotation" )
   for i in "${EXERCISES[@]}"   
   do
	   say $i && termdown 30 --exec-cmd "if [ '{0}' == '3' ]; then say -v Alex {1}; fi" && say stop && termdown 10 --exec-cmd "if [ '{0}' == '3' ]; then say -v Alex {1}; fi" 
   done
   say side plank && termdown 30 --exec-cmd "if [ '{0}' == '15' ]; then say -v Alex switch sides; fi" && say workout complete
}
