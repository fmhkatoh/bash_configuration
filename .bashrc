# prompt setting
# Color Code are from https://misc.flogisoft.com/bash/tip_colors_and_formatting

export PS1="\e[${FG_LIGHT_CYAN}m[\u\e[0m@\e[${FG_LIGHT_MAGENTA};${BG_LIGHT_CYAN}m\H\e[${RESET_ALL}m\e[${FG_LIGHT_CYAN}m] \e[${FG_LIGHT_GREEN}m(\D{%Y/%m/%d} \t)\n\e[${FG_LIGHT_YELLOW}m\$PWD\n\e[${BG_BLUE};${FG_LIGHT_YELLOW}m(\!)\e[${BG_DEFAULT};${FG_DEFAULT}m\e[${FG_LIGHT_CYAN}m \$\e[${BG_DEFAULT};${FG_DEFAULT}m "

export PS2="     \e[${FG_LIGHT_CYAN}m+\e[${BG_DEFAULT};${FG_DEFAULT}m "

# default setting of list command
alias ls='ls --show-control-chars'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#some more aliaces
alias ll='ls -lAF'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias clc='clear'