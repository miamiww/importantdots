echo "loading .bash_profile"
THIS_DIR=$(dirname $BASH_SOURCE)
source $THIS_DIR/.path_setup.sh
source $THIS_DIR/.aliases.sh
source $THIS_DIR/.tiny_care.sh

cd /Users/madonna/sandbox/
# source ~/ITP/Year1/Semester2/Other/FrequencySweeep/freqSweep.sh

# export PS1="👻🌵✨$ "
export PS1="👻🌵🔮 $ "
#export PS1="👻🌵🌟$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

ITP(){
cd /Users/aljones/ITP/"$1"/"$2"
}

getIP(){
bash /Users/aljones/.functions/.getIP/getIP
}

. "$HOME/.cargo/env"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/madonna/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/madonna/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/madonna/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/madonna/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

