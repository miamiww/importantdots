echo "setting paths"

# php for bless
export PATH="/usr/local/Cellar/php@7.4/7.4.22/bin:$PATH"

# homebrew
export PATH="/usr/local/bin:$PATH"

#gnubin for oldschool ftp and telnet
#export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"
# for when I make something just for me
export PATH="/Users/madonna/.local/bin:$PATH"

# global python
#export PATH="/Users/madonna/.localpython/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# go executables

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
#Postgres stuff
#export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

#added by Anaconda3 4.1.0 installer
#export PATH="/Users/madonna/anaconda/bin:$PATH"

#weird icu4c keg stuff
#export PATH="/usr/local/opt/icu4c/bin:$PATH"

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/madonna/anaconda/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#	    \eval "$__conda_setup"
#    else
#        if [ -f "/Users/madonna/anaconda/etc/profile.d/conda.sh" ]; then
#	        . "/Users/madonna/anaconda/etc/profile.d/conda.sh"
#	        CONDA_CHANGEPS1=false conda activate base
#        else
#            \export PATH="/Users/madonna/anaconda/bin:$PATH"
#        fi
#fi
#unset __conda_setup
# <<< conda init <<<

#trying to tell homebrew where xcode is
export PATH="/Applications/Xcode.app/Contents/Developer:$PATH"


#more icu4c stuff, telling compilers where to find it
#export LDFLAGS="-L/usr/local/opt/icu4c/lib"
#export CPPFLAGS="-I/usr/local/opt/icu4c/include"
#export LDFLAGS="-L/usr/local/Cellar/icu4c/62.1/lib/"


# nvm
export NVM_DIR="$HOME/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#pyenv management, see https://opensource.com/article/19/5/python-3-default-mac
if command -v pyenv 1>/dev/null 2>&1; then 
	eval "$(pyenv init -)" 
fi



#export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
