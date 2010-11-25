# get the name of the branch we are on
function hg_prompt_info() {
    ref=$(hg symbolic-ref HEAD 2> /dev/null) || return
    echo "$ZSH_THEME_HG_PROMPT_PREFIX${ref#refs/heads/}$(parse_hg_status)$ZSH_THEME_HG_PROMPT_SUFFIX"
}

parse_hg_status () {
    hgstat=$(hg status 2>/dev/null | grep '\(# Your branch is ahead of\|# Untracked\|# Changes\|# Changed but not updated:\)')
    
    if [[ $(echo ${hgstat} | grep -c "^# Changes to be committed:$") > 0 ]]; then
        echo -n "$ZSH_THEME_HG_PROMPT_DIRTY"
    fi
    
    if [[ $(echo ${hgstat} | grep -c "^\(# Untracked files:\|# Changed but not updated:\)$") > 0 ]]; then
        echo -n "$ZSH_THEME_HG_PROMPT_UNTRACKED"
    fi 
    
    if [[ $(echo ${hgstat} | grep -c "^\(# Your branch is ahead of\)$") > 0 ]]; then
        echo -n "$ZSH_THEME_HG_PROMPT_AHEAD"
    fi
    
    if [[ $(echo ${hgstat} | grep -v '^$' | wc -l | tr -d ' ') == 0 ]]; then
        echo -n "$ZSH_THEME_HG_PROMPT_CLEAN"
    fi
}