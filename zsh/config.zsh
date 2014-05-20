# Disable autocorrect
DISABLE_CORRECTION="true"
unsetopt correct
unsetopt correct_all

# enable autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
