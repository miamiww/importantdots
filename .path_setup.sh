echo "setting paths"

# homebrew
export PATH="/usr/local/bin:$PATH"

#gnubin for oldschool ftp and telnet
export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"
# for when I make something just for me
export PATH="/Users/aljones/.local/bin:$PATH"
#added by Anaconda3 4.1.0 installer
#export PATH="/Users/aljones/anaconda/bin:$PATH"

#weird icu4c keg stuff
#export PATH="/usr/local/opt/icu4c/bin:$PATH"

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/aljones/anaconda/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
	    \eval "$__conda_setup"
    else
        if [ -f "/Users/aljones/anaconda/etc/profile.d/conda.sh" ]; then
	        . "/Users/aljones/anaconda/etc/profile.d/conda.sh"
	        CONDA_CHANGEPS1=false conda activate base
        else
            \export PATH="/Users/aljones/anaconda/bin:$PATH"
        fi
fi
unset __conda_setup
# <<< conda init <<<

#trying to tell homebrew where xcode is
export PATH="/Applications/Xcode.app/Contents/Developer:$PATH"

#more icu4c stuff, telling compilers where to find it
#export LDFLAGS="-L/usr/local/opt/icu4c/lib"
#export CPPFLAGS="-I/usr/local/opt/icu4c/include"
#export LDFLAGS="-L/usr/local/Cellar/icu4c/62.1/lib/"


#nvm
export NVM_DIR="$HOME/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
