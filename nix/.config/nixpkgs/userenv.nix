let 
  pkgs = import <nixpkgs> { };
in pkgs.buildEnv {

  name = "userenv";

  paths = with pkgs; [
    chezmoi
    gh
    stow
    direnv
    neovim
    git
    lazygit
    neovim
    vimPlugins.vim-plug
    antigen
    starship
    nodejs-slim
    tmux
    ripgrep
    fd
    (writeScriptBin "nix-env-update" ''
      #!${stdenv.shell}
      nix-env --install --file ~/.config/nixpkgs/userenv.nix
    '')
  ];

}
