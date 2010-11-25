# get the name of the branch we are on
function hg_prompt_info() {
    ref=$(hg branch 2> /dev/null) || return
    echo "$ZSH_THEME_HG_PROMPT_PREFIX${ref}$(parse_hg_status)$ZSH_THEME_HG_PROMPT_SUFFIX"
}

parse_hg_status () {
    hgstat=$(hg summary --remote 2> /dev/null)
    
    if [[ $(echo ${hgstat} | grep -c "commit: .* added") > 0 ]]; then
        echo -n "$ZSH_THEME_HG_PROMPT_DIRTY"
        return
    fi
    
    if [[ $(echo ${hgstat} | grep -c "commit: .* unknown") > 0 ]]; then
        echo -n "$ZSH_THEME_HG_PROMPT_UNTRACKED"
        return
    fi 
    
    if [[ $(echo ${hgstat} | grep -c "remote: .* outgoing") > 0 ]]; then
        echo -n "$ZSH_THEME_HG_PROMPT_AHEAD"
        return
    fi
    
    if [[ $(echo ${hgstat} | grep -c "(clean)") > 0 ]]; then
        echo -n "$ZSH_THEME_HG_PROMPT_CLEAN"
        return
    fi
}
