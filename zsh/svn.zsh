# get the name of the branch we are on
function svn_prompt_info() {
    ref=$(svn symbolic-ref HEAD 2> /dev/null) || return
    echo "$ZSH_THEME_SVN_PROMPT_PREFIX${ref#refs/heads/}$(parse_svn_status)$ZSH_THEME_SVN_PROMPT_SUFFIX"
}

parse_svn_status () {
    svnstat=$(svn status 2>/dev/null | grep '\(# Your branch is ahead of\|# Untracked\|# Changes\|# Changed but not updated:\)')
    
    if [[ $(echo ${svnstat} | grep -c "^# Changes to be committed:$") > 0 ]]; then
        echo -n "$ZSH_THEME_SVN_PROMPT_DIRTY"
    fi
    
    if [[ $(echo ${svnstat} | grep -c "^\(# Untracked files:\|# Changed but not updated:\)$") > 0 ]]; then
        echo -n "$ZSH_THEME_SVN_PROMPT_UNTRACKED"
    fi 
    
    if [[ $(echo ${svnstat} | grep -c "^\(# Your branch is ahead of\)$") > 0 ]]; then
        echo -n "$ZSH_THEME_SVN_PROMPT_AHEAD"
    fi
    
    if [[ $(echo ${svnstat} | grep -v '^$' | wc -l | tr -d ' ') == 0 ]]; then
        echo -n "$ZSH_THEME_SVN_PROMPT_CLEAN"
    fi
}