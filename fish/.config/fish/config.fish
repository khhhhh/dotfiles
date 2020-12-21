fish_vi_key_bindings


alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias vimbash='nvim ~/.bashrc'
alias vimi3='nvim ~/.config/i3/config'
alias neofetch='neofetch --w3m'
alias ranger='ranger --choosedir=$HOME/.config/ranger/rangerdir; set LASTDIR (cat $HOME/.config/ranger/rangerdir); cd "$LASTDIR"'
alias vim='nvim'

set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux XDG_DATA_HOME $HOME/.local/share

set fish_greeting

function fish_prompt
#    echo (set_color --bold magenta)(prompt_pwd)
#    echo -n (set_color --bold red)'> '
#    set_color normal
end

function fish_mode_prompt
    switch $fish_bind_mode
      case default
    	echo (set_color --bold magenta)(prompt_pwd)
	set_color --bold red
	echo ' > '
      case insert
    	echo (set_color --bold magenta)(prompt_pwd)
	set_color --bold normal
	echo ' > '
      case replace_one
    	echo (set_color --bold magenta)(prompt_pwd)
	set_color --bold green
	echo ' > '
      case visual
    	echo (set_color --bold magenta)(prompt_pwd)
	set_color --bold brmagenta
	echo ' > '
      case '*'
    	echo (set_color --bold magenta)(prompt_pwd)
	set_color --bold red
	echo ' > '
    end
    set_color normal
end
 
