# set PATH (brew --prefix coreutils)/libexec/gnubin $PATH
set PATH $HOME/.pyenv/bin $HOME/.local/bin $HOME/.cargo/bin $PATH

fundle plugin 'edc/bass'

fundle init

nvm use default

set -g theme_color_scheme solarized-dark

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/debjit/.nvm/versions/node/v10.15.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /home/debjit/.nvm/versions/node/v10.15.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/debjit/.nvm/versions/node/v10.15.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /home/debjit/.nvm/versions/node/v10.15.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/debjit/.nvm/versions/node/v10.15.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /home/debjit/.nvm/versions/node/v10.15.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fishrvm default
# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /home/debjit/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /home/debjit/.ghcup/bin $PATH
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx FZF_DEFAULT_COMMAND 'fzf --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
