PROMPT='
%{$fg[red]%}%n@%m %{$fg_bold[blue]%}%d %{$fg[white]%}%D{%a %b %d, %I:%M:%S}
$(git_prompt_info)$(hg_prompt_info)$(svn_prompt_info)> %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}git:(%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[white]%}) %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[white]%}) %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[white]%}) %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[white]%}) %{$fg[white]%}"

ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[white]%}hg:(%{$fg[cyan]%}"
ZSH_THEME_HG_PROMPT_SUFFIX=""
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[white]%}) %{$fg[yellow]%}"
ZSH_THEME_HG_PROMPT_UNTRACKED="%{$fg[white]%}) %{$fg[red]%}"
ZSH_THEME_HG_PROMPT_AHEAD="%{$fg[white]%}) %{$fg[green]%}"
ZSH_THEME_HG_PROMPT_CLEAN="%{$fg[white]%}) %{$fg[white]%}"

ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[white]%}svn:(%{$fg[cyan]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX=""
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[white]%}) %{$fg[yellow]%}"
ZSH_THEME_SVN_PROMPT_UNTRACKED="%{$fg[white]%}) %{$fg[red]%}"
ZSH_THEME_SVN_PROMPT_AHEAD="%{$fg[white]%}) %{$fg[green]%}"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[white]%}) %{$fg[white]%}"
