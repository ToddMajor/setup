! .bin/sh

# just type directory to move to it
setopt autocd 

# if you try to autocomplete with tab, it selects the first option. Tabbing again cycles through the list.
setopt menu_complete

# comments are ignored in shell scripts in terminal. I believe this is one during scripts.
setopt interactive_comments

# stop silly ctrl+s from freezing terminal
stty stop undef

# when copy mpasting, do not have annoying highlight
zle_highlight=('paste:none')

# why beep; stop it
unsetopt BEEP

# Useful Functions
source "$ZDOTDIR/zsh-functions"

# zsh_add_file "zsh_file_name" # just an example

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
# zsh_add_completion "esc/conda-zsh-completion" false
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
# More completions https://github.com/zsh-users/zsh-completions

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh #added with fzf from prompt
