export ZSH="$HOME/.oh-my-zsh"  
export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'
export NVIM_APPNAME='nvim'
export PATH="$HOME/.local/itllsv/applications/:$PATH"

plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
)

if [ -n "$TMUX" ]; then
  export TERM=tmux-256color
fi

function ssh-add() {
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/itllsv
}

function gitlab-clone() {
	cd ~/Work/
	sh ~/.scripts/clone_claro_repos.sh
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export MANPAGER='nvim +Man!'

export PNPM_HOME="/home/itllsv/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

eval "$(starship init zsh)"
eval "$(~/.local/bin/mise activate zsh)"

source $ZSH/oh-my-zsh.sh

bindkey -v
bindkey '^I' menu-complete
bindkey '\\' autosuggest-accept

alias vim="nvim"
alias n="nvim"
alias v="nvim"

alias work="cd ~/Work && clear"
alias code="cd ~/Code && clear"
alias dots="cd ~/.local/share/archtomate/dotfiles/ && clear"
alias conf="cd ~/.config && clear"
alias pmc="cd ~/Work/portal-minha-claro/"

alias nc="cd ~/.config/nvim/ && nvim init.lua"
alias zc="cd ~ && nvim ~/.zshrc"
alias zs="source ~/.zshrc && clear"
alias ttc="cd ~/.config/tmuxinator/ && nvim ."
alias wc="cd ~/.config/wezterm/ && nvim wezterm.lua"
alias tc="nvim ~/.tmux.conf"
alias hc="nvim ~/.config/hypr/hyprland.conf"

alias tk="tmux kill-server"
alias tts="tmuxinator start"

alias pn="pnpm"

alias ls='exa --group-directories-first'
alias ll='exa -la --group-directories-first --no-time --no-filesize'
alias lll='exa -lha --group-directories-first'
