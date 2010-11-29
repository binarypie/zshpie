PROMPT='
%{$fg[blue]%}%n@%m %{$fg_bold[green]%}%d %{$fg[white]%}%D{%a %b %d, %I:%M:%S}
$(git_prompt_info)$(hg_prompt_info)$(svn_prompt_info)♨ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%}) %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%}) %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[white]%}"

ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[blue]%}hg:(%{$fg[red]%}"
ZSH_THEME_HG_PROMPT_SUFFIX=""
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}"
ZSH_THEME_HG_PROMPT_UNTRACKED="%{$fg[blue]%}) %{$fg[red]%}"
ZSH_THEME_HG_PROMPT_AHEAD="%{$fg[blue]%}) %{$fg[green]%}"
ZSH_THEME_HG_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[white]%}"

ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[blue]%}svn:(%{$fg[red]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX=""
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}"
ZSH_THEME_SVN_PROMPT_UNTRACKED="%{$fg[blue]%}) %{$fg[red]%}"
ZSH_THEME_SVN_PROMPT_AHEAD="%{$fg[blue]%}) %{$fg[green]%}"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[white]%}"