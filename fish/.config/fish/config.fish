set -x LANG en_US.UTF-8
set -U fish_greeting


alias v nvim
alias ls "exa --icons --git"

# Git aliases
alias ga "git add"
alias gb "git branch"
alias gbD "git branch -D"
alias gd "git diff"
alias gdc "git diff --cached"
alias gcm "git commit -m"
alias gco "git checkout"
alias gcb "git checkout -b"
alias gl "git log --oneline"
alias glp "git log -p"
alias gst "git status"


source ~/.asdf/asdf.fish

direnv hook fish | source


fish_add_path $HOME/.cargo/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/vahid/Downloads/google-cloud-sdk/path.fish.inc" ]
    . "/Users/vahid/Downloads/google-cloud-sdk/path.fish.inc"
end

zoxide init fish | source

set -gx WASMTIME_HOME "$HOME/.wasmtime"

string match -r ".wasmtime" "$PATH" >/dev/null; or set -gx PATH "$WASMTIME_HOME/bin" $PATH

starship init fish | source
