set PATH (brew --prefix coreutils)/libexec/gnubin $PATH
set PATH $HOME/.local/bin $HOME/.cargo/bin $PATH

fundle plugin 'edc/bass'

fundle init

nvm use default
