let 
  pkgs = import <nixpkgs> { };
in pkgs.buildEnv {

  name = "userenv";

  paths = with pkgs; [
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
    rustup
    (writeScriptBin "nix-env-update" ''
      #!${stdenv.shell}
      nix-env --install --file ~/.config/nixpkgs/userenv.nix
    '')
  ];

}
