#! .bin/sh

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
