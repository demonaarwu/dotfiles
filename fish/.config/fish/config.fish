if status is-interactive
    # Commands to run in interactive sessions can go here
    alias pyactivate=". venv/bin/activate.fish"
    alias em="emacs -nw"
    alias et="emacsclient -a \"\" -t"
    fzf --fish | source
    source "$HOME/.cargo/env.fish"  # For fish
    set -x EDITOR nvim
    set -x TERMINAL alacritty
    set -U fish_user_paths ~/.cargo/bin $fish_user_paths
    set -U fish_user_paths ~/.local/bin $fish_user_paths
    function backup
    	git add .
        git commit -m (date +%Y-%m-%d)
    end
end
