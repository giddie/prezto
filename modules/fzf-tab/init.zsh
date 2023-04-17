#
# Integrates fzf-tab into Prezto.
#
# Authors:
#   Paul Gideon Dann <pdgiddie@gmail.com>
#
# Source module files.

zstyle -d ':completion:*' format

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false

# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'

# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*:git-checkout:*' fzf-preview

# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'

# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'

zstyle ':fzf-tab:*' fzf-min-height '10'

# Work around issue rendering multiline-prompts with no completions
zstyle -d ':prezto:module:editor:info:completing' format

source "${0:h}/external/fzf-tab/fzf-tab.plugin.zsh" || return 1
source "${0:h}/external/fzf-tab-source/fzf-tab-source.plugin.zsh" || return 1
