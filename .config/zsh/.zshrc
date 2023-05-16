# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export HISTFILE=$ZDOTDIR/.zsh_history # don't forget to touch file!
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# just type directory to move to it
setopt autocd 

# if you try to autocomplete with tab, it selects the first option. Tabbing again cycles through the list.
setopt menu_complete

# comments are ignored in shell scripts in terminal. I believe this is one during scripts.
setopt interactive_comments

# stop silly ctrl+s from freezing terminal
# stty stop undef

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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
