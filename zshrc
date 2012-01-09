# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# UTF-8
export LC_CTYPE=en_US.UTF-8

# Load all of the config files in ZshPie that end in .zsh
for config_file ($ZSH/zsh/*.zsh) source $config_file

# Vim key bindings
bindkey -v
