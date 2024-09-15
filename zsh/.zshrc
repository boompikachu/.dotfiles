eval "$(starship init zsh)"
eval "$(direnv hook zsh)"


autoload -Uz +X compinit && compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# vim
export EDITOR=nvim
alias vimdiff='nvim -d'

source ~/.nix-profile/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z
antigen bundle MichaelAquilina/zsh-you-should-use

antigen bundle git
antigen apply
