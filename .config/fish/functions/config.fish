function config --description 'Alias to git command but only for dot files'
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME
end
