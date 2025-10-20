# Remove fish greeting
function fish_greeting
end

set -gx EDITOR nvim

# Aliases
# File system
alias ls='eza -lh --color=always --group-directories-first --icons' # preferred listing
alias lsa='eza -alh --color=always --group-directories-first --icons' # all files and dirs
alias lt='eza -lTh --level=2 --color=always --group-directories-first --icons' # tree listing
alias ls.="eza -a | grep -e '^\.'" # show only dotfiles
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias yc="yazi .config"
alias ch="nvim .config/hypr/hyprland.conf"
alias cf="nvim .config/fish/config.fish"
# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Tools
# Opens LazyVim on current directory
alias n='nvim'
function n
    if test (count $argv) -eq 0
        nvim .
    else
        nvim $argv
    end
end

# Opens Yazi on current directory
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# Git
alias g='git'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'

# Starship prompt
starship init fish | source

if uwsm check may-start
    then
    exec uwsm start hyprland.desktop
end

# Zoxide prompt
#zoxide init fish --cmd cd | source # Replaces cd command
