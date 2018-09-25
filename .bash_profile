echo "loading aljones .bash_profile"
THIS_DIR=$(dirname $BASH_SOURCE)
source $THIS_DIR/.path_setup.sh
source $THIS_DIR/.aliases.sh
source $THIS_DIR/.tiny_care.sh

cd /Users/aljones/ITP/Year2/1Semester/
# source ~/ITP/Year1/Semester2/Other/FrequencySweeep/freqSweep.sh

export PS1="👻 🌵 ✨ $ "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

ITP(){
cd /Users/aljones/ITP/"$1"/"$2"
}

getIP(){
bash /Users/aljones/sandbox/getIP
}

# added by Anaconda3 5.2.0 installer
export PATH="/Users/aljones/anaconda3/bin:$PATH"

