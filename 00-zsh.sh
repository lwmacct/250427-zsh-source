# shellcheck disable=all
{
	# 自动加载项目/个人环境变量文件，且全部导出
	set -a
	[[ -f ~/.env ]] && source ~/.env
	set +a
}

{
	ZSH_THEME="bira"
	ZDOTDIR=~/.cache/zsh
	ZSH_COMPDUMP="${ZDOTDIR:-$HOME}/.zcompdump"
	# 在第 73 行
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
