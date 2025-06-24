if status is-interactive
    # Commands to run in interactive sessions can go here
    alias pyactivate=". venv/bin/activate.fish"
    alias em="emacs -nw"
    alias et="emacsclient -a \"\" -t"
    zoxide init fish | source
    fzf --fish | source
    alias cd="z"
    set -x EDITOR emacs
    set -x TERMINAL alacritty
    . /home/demonaarwu/.nix-profile/etc/profile.d/nix.fish
    set -U fish_user_paths ~/.cargo/bin $fish_user_paths
    set -Ua fish_features no-keyboard-protocols

    set -U fish_user_paths ~/.local/bin $fish_user_paths
    # source ~/.venv/bin/activate.fish
    function backup
    	git add .
        git commit -m (date +%Y-%m-%d)
    end
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
