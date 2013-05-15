# -*- bash -*-
#
# ~/.bashrc
#

source /etc/bash.bashrc
source /etc/profile.d/bash_completion.sh 2>/dev/null
source /usr/share/autojump/autojump.bash 2>/dev/null

#
# Prompt
#

case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
*)
    ;;
esac

#
# Environment
#

# Path
export PATH="/bin:/sbin:/usr/bin:/usr/sbin"
export PATH="${HOME}/.local/bin:${PATH}"
export PATH="${HOME}/Applications/Sublime\ Text\ 2:${PATH}"

# Debian
export DEBEMAIL="lorenzo@villani.me"
export DEBFULLNAME="Lorenzo Villani"
alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"

# Editors
export EDITOR="subl"
export GIT_EDITOR="nano"

# Java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export JAVA_FONTS="/usr/share/fonts/truetype"

# Ruby
export GEM_HOME="${HOME}/.gem/ruby/1.9.1"
export PATH="${GEM_HOME}/bin:${PATH}"

#
# Aliases
#

# General
alias e="detach ${EDITOR}"
alias g="git"
alias grep="grep --color"
alias ls="ls --color -l -F --group-directories-first"
alias p="pass -c"
alias r="source ~/.bashrc"
alias servethis="python -m SimpleHTTPServer"

# Application-level package managers
alias gemi="gem install --user-install --no-rdoc --no-ri"
alias pipi="pip install --user"

#
# Functions
#

detach() {
    nohup ${@} 2>&1 > /dev/null &
} 2>&1 > /dev/null

#
# Bash Completion for aliases
#

complete -o default -o nospace -F _command detach
complete -o default -o nospace -F _git g
complete -o default -o nospace -F _pass p
