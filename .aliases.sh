echo 'setting aliases'

#alias tmux="TERM=screen-256color-bce tmux"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias camRestart='sudo killall VDCAssistant'

alias chromeTest='open -a "Google Chrome" "http://localhost:3000"'
alias questionRead='cat /Users/aljones/ITP/Year1/Semester2/Detourning/2Week/assignment/yahooQuestions.txt | say -v Fred '
alias gs='git status'
alias deployH='bash ~/ITP/miamiww.github.io/deploy.sh'
alias slidebot800='/Users/aljones/ITP/Year1/Semester2/ElectronicText/final_project/slidebot'
alias ls='ls -GFh'
alias screen="/usr/local/bin/screen"
alias firefox="/Applications/Firefox\ 2.app/Contents/MacOS/firefox"
