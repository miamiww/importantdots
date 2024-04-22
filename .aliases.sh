echo 'setting aliases'

#alias tmux="TERM=screen-256color-bce tmux"
# music organization related
alias intake='cd /Users/madonna/Desktop/MP3s/AllTracks/Intake'


alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias camRestart='sudo killall VDCAssistant'
alias makeServer='bash ~/.functions/.server_maker/make_server.sh'
alias chromeTest='open -a "Google Chrome" "http://localhost:3000"'
alias questionRead='cat /Users/madonna/ITP/Year1/Semester2/Detourning/2Week/assignment/yahooQuestions.txt | say -v Fred '
alias gs='git status'
alias deployH='bash ~/ITP/ITPblog/deploy.sh'
alias slidebot800='/Users/madonna/ITP/Year1/Semester2/ElectronicText/final_project/slidebot'
alias ls='ls -GFh'
alias screen="/usr/local/bin/screen"
alias firefox="/Applications/Firefox\ 2.app/Contents/MacOS/firefox"
alias pingu="ping -c 3"
alias noCors="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security"
alias python27="conda activate py27"
alias bashRestart="exec bash -l"
alias freeciv="freeciv-gtk2"
alias tclock="tty-clock -DBc -C 5"
#alias zzz="pmset sleepnow"
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias ps2='wine /Users/madonna/.wine/drive_c/Program\ Files\ \(x86\)/PCSX2\ 1.4.0/pcsx2.exe'
alias sandbox='cd ~/sandbox'
alias appletviewer="/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home/bin/appletviewer"

alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

alias thesis="cd /Users/madonna/ITP/Year2/2Semester/Thesis"
alias cdgo="cd ~/.golang"

alias weather='curl wttr.in/nyc?u | less'
alias wgetAll='wget --recursive --no-clobber --html-extension --page-requisites --convert-links --no-parent'

alias dudot='du -sh .'
# alias thelot='mplayer -nocache -afm ffmpeg http://thelot.out.airtime.pro:8000/thelot_b'
# alias nts2='mplayer -nocache -afm ffmpeg http://stream-relay-geo.ntslive.net/stream2'
# alias nts1='mplayer -nocache -afm ffmpeg http://stream-relay-geo.ntslive.net/stream'
alias nts1='mpv http://stream-relay-geo.ntslive.net/stream'
alias nts2='mpv http://stream-relay-geo.ntslive.net/stream2'
alias thelot='mpv http://thelot.out.airtime.pro:8000/thelot_b'
alias rinse='mplayer -nocache -afm ffmpeg http://206.189.117.157:8000/stream'
alias cashmere='mplayer -nocache -afm ffmpeg http://cashmereradio.out.airtime.pro:8000/cashmereradio_b'
alias kmhd='mpv http://stream5.opb.org/kmhd_web.mp3'

alias googler='googler -n 3'
alias resteyes='termdown 20 && say done'
#alias workcycle='termdown 20m && say rest eyes && termdown 20 && say done '
alias sshB='ssh root@159.65.179.9'
alias podfix='switchaudiosource -t input -s "MacBook Pro Microphone"'
alias playbin='pbpaste | mpv'
# music organization related
alias intake='cd /Users/madonna/Desktop/MP3s/AllTracks/Intake'

exifclean(){
	
	current_dir=$(pwd)

	if [[ "$current_dir" == "/Users/madonna/Dropbox/Documents/taratar/dommephotos/selects/LightroomEdits" ]]; then
	    echo "post-Lightroom exif purge"
	    exiftool -all= --icc_profile:all *.jpg
	    rm *.jpg_original
	    mv *.jpg exif_clean 
	else
	    # Execute command if in a different directory
	    echo "removing exif data from all jpgs"
    	    exiftool -all= --icc_profile:all *.jpg
	    rm *.jpg_original
	fi	
	
}

morg(){
	mv $1 /Users/madonna/Desktop/MP3s/AllTracks/$2
}

banish(){
	mv $1 /Users/madonna/Desktop/MP3s/AllTracks/Intake/low_bitrate_void
}

changevolume(){
	sudo osascript -e "set Volume $1"
}

grepstring(){
	grep -rnwl "$1" -e "$2"
}

tinycare(){
	nvm use 11
	tiny-care-terminal
}


blockCheck(){
	result=$(curl https://thegreatest.website:8080/ips/"$1")
	echo $result
}

hostIP(){
	host $1 | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"
}

zzz(){
	osascript -e 'set volume output muted true'
	blueutil -p 0
	pmset sleepnow
}
workcycle(){
	n=0
	while [ $n -le $1 ]
	do 
	     termdown 20m && say rest eyes && termdown 20 && say finished
	     n=$(( n+1 ))
	done
}


alias venvpy3='virtualenv --python=$HOME/.localpython/bin/python3.7'


ITP(){
	cd /Users/madonna/ITP/"$1"/"$2"
}

BIGIP(){
	ASNUM=$1
	shift;
	echo 'Querying WHOIS for' $ASNUM
	result=$(whois -h whois.radb.net -- "-i origin $ASNUM" \| grep -Eo "([0-9.]+){4}/[0-9]+" | grep route)
	echo $result
}


min7(){
   EXERCISES=( "Wall Sit" "Push Ups" "Sit Ups" "Step Ups" "Squats" "Tricep Dips" "Plank" "Running In Place" "Lunges" "Push Ups With Rotation" "Side Plank")
   say lets go. jumping jacks 
   for i in "${EXERCISES[@]}"   
   do
	   say start && termdown 30 --exec-cmd "if [ '{0}' == '3' ]; then say -v Alex {1}; elif [ '{0}' == '2' ]; then say -v Alex {1}; elif [ '{0}' == '1' ]; then say -v Alex {1}; fi" && say stop.  Next up $i && termdown 10 --exec-cmd "if [ '{0}' == '3' ]; then say -v Alex {1}; elif [ '{0}' == '2' ]; then say -v Alex {1}; elif [ '{0}' == '1' ]; then say -v Alex {1}; fi" 
   done
   say start && termdown 15 && say -v Alex switch sides && termdown 17 && say workout complete
}

stretchA(){
	termdown 5 && say start && termdown 30 && say stop && termdown 10 && say start && termdown 45 && say stop && termdown 10 && say start && termdown 60 && say stop
}

cmusstart(){
	cd /Users/madonna/Desktop/4drive
	cmus	
}

findAndReplaceAll(){
	grep -rli $1 * | xargs -i@ sed -i "s/$1/$2/g" @

}

replaceHomeFolderName(){
	sudo grep -rl "Users/$1" ./ | tr '\n' '\0'  |  xargs -0 sudo gsed -i "s/$1/$2/g" &
}

nrichone(){
	echo $1 | nrich -
}
