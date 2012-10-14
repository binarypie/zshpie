# ls colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Enable ls colors
ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'

#setopt no_beep
setopt auto_cd
setopt multios
setopt cdablevarS

if [[ x$WINDOW != x ]]
then
    SCREEN_NO="%B$WINDOW%b "
else
    SCREEN_NO=""
fi

# Apply theming defaults
PS1="%n@%m:%~%# "

# git theming default: Variables for theming the git info prompt
ZSH_THEME_GIT_PROMPT_PREFIX="git:("         # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_GIT_PROMPT_SUFFIX=")"             # At the very end of the prompt
ZSH_THEME_GIT_PROMPT_DIRTY="*"              # Text to display if the branch is dirty
ZSH_THEME_GIT_PROMPT_CLEAN=""               # Text to display if the branch is clean
ZSH_THEME_GIT_PROMPT_AHEAD="+"              # Text to display if the branch is head of the remote

# hg theming default: Variables for theming the hg info prompt
ZSH_THEME_HG_PROMPT_PREFIX="hg:("         # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_HG_PROMPT_SUFFIX=")"             # At the very end of the prompt
ZSH_THEME_HG_PROMPT_DIRTY="*"              # Text to display if the branch is dirty
ZSH_THEME_HG_PROMPT_CLEAN=""               # Text to display if the branch is clean
ZSH_THEME_HG_PROMPT_AHEAD="+"              # Text to display if the branch is head of the remote

# svn theming default: Variables for theming the svn info prompt
ZSH_THEME_SVN_PROMPT_PREFIX="svn:("         # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_SVN_PROMPT_SUFFIX=")"             # At the very end of the prompt
ZSH_THEME_SVN_PROMPT_DIRTY="*"              # Text to display if the branch is dirty
ZSH_THEME_SVN_PROMPT_CLEAN=""               # Text to display if the branch is clean
ZSH_THEME_SVN_PROMPT_AHEAD="+"              # Text to display if the branch is head of the remote

# Setup the prompt with pretty colors
setopt prompt_subst

# Load the theme
source "$ZSH/zsh/$ZSH_THEME.zsh-theme"
