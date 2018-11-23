echo "setting paths"

# homebrew
export PATH="/usr/local/bin:$PATH"

#added by Anaconda3 4.1.0 installer
export PATH="/Users/aljones/anaconda/bin:$PATH"

#trying to tell homebrew where xcode is
export PATH="/Applications/Xcode.app/Contents/Developer:$PATH"

export NVM_DIR="$HOME/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
