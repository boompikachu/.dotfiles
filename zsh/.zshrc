eval "$(starship init zsh)"
eval "$(direnv hook zsh)"

source ~/.nix-profile/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z
antigen bundle MichaelAquilina/zsh-you-should-use

antigen bundle git
antigen apply
