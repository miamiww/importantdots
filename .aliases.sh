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

alias appletviewer="/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home/bin/appletviewer"
alias thesis="cd /Users/aljones/ITP/Year2/2Semester/Thesis"

alias weather='curl wttr.in/nyc | less'
alias wgetAll='wget --recursive --no-clobber --html-extension --page-requisites --convert-links --no-parent'

alias thelot='mplayer -nocache -afm ffmpeg http://thelot.out.airtime.pro:8000/thelot_b'
alias nts2='mplayer -nocache -afm ffmpeg http://stream-relay-geo.ntslive.net/stream2'
alias nts1='mplayer -nocache -afm ffmpeg http://stream-relay-geo.ntslive.net/stream'

alias venvpy3='virtualenv --python=$HOME/.localpython/bin/python3.7'


ITP(){
	cd /Users/aljones/ITP/"$1"/"$2"
}
