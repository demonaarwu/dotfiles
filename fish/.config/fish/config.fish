if status is-interactive
    # Commands to run in interactive sessions can go here
    alias cd=z
    alias pyactivate=". venv/bin/activate.fish"
    alias em="emacs -nw"
    zoxide init fish | source
    fzf --fish | source
    set -x EDITOR nvim
    set -x TERMINAL alacritty
    set -U fish_user_paths ~/.cargo/bin $fish_user_paths
    set -U fish_user_paths ~/.local/bin $fish_user_paths
    function backup
    	git add .
        git commit -m (date +%Y-%m-%d)
    end
end
