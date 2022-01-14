# =====================================================
# Powerlevel10k theme, which requires extra installation
# =====================================================
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# ====End of Powerlevel10k====

# =====================================================
# Use the package manager antigen, which requires extra installation
# =====================================================
# Package manager
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# =====================================================
antigen bundle git
antigen bundle pip
antigen bundle colored-man-pages #colorize pages returned by the /man/ command
antigen bundle colorize #colorize syntax in multiple languages, used with the /cat/ command
antigen bundle command-not-found #suggest alternatives when a command is not found
antigen bundle dircycle # cycle through directories with  ctr+shift+[left/right]
antigen bundle python
antigen bundle web-search

# Bundles from the github.com/zsh-users repo
# =====================================================
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# Tell antigen that you're done.
antigen apply
# ====End of antigen====

# =====================================================
# Other configurations
# =====================================================
# Alias
alias python="python3"
