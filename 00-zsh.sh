# shellcheck disable=SC2148
# shellcheck disable=SC2034,SC2086,SC1091

{
    ZSH_THEME="bira"
    ZDOTDIR=~/.cache/zsh

    plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
        zsh-completions
        per-directory-history
    )

    export ZSH="$HOME/.oh-my-zsh"
    source $ZSH/oh-my-zsh.sh

}
