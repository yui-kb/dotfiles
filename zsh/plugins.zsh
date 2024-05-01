znap source marlonrichert/zsh-autocomplete

function ya() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

znap source akash329d/zsh-alias-finder

znap source ael-code/zsh-colored-man-pages

znap source goarano/zsh-packagemanager-fzf

znap source zshzoo/macos

znap source redxtech/zsh-unix-simple

znap source mattmc3/zman

znap source andydecleyre/zpy

znap source MenkeTechnologies/zsh-cargo-completion

znap source Amar1729/yabai-zsh-completions
