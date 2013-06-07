#
# ~/.config/fish/config.fish
#

. ~/.config/fish/virtual.fish

#
# Environment Variables
#

set -e fish_greeting
set -x CFLAGS "-pedantic -Wall -Wextra -Werror"
set -x CC clang
set -x CXX clang++
set -x DEBEMAIL "lorenzo@villani.me"
set -x DEBFULLNAME "Lorenzo Villani"
set -x EDITOR subl
set -x GEM_HOME $HOME/.gem/ruby/1.9.1
set -x GIT_EDITOR nano
set -x PATH ~/.local/bin $GEM_HOME/bin $PATH

#
# Aliases
#

alias e subl
alias g git
alias kb "subl ~/Development/HTML5/lorenzo.villani.me/source/kb"
alias x-ext "xrandr --output HDMI1 --auto --output LVDS1 --off"
alias x-int "xrandr --output LVDS1 --auto --output HDMI1 --off"
alias x-span "xrandr --output HDMI1 --auto --primary --output LVDS1 --auto --right-of HDMI1"

function fish_right_prompt
    echo (basename $VIRTUAL_ENV "") (__fish_git_prompt)
end
