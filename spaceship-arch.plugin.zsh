#
# Arch 
#
# Arch is a tool indicate if your shell running in x86 env.

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_ARCH_SHOW="${SPACESHIP_ARCH_SHOW=true}"
SPACESHIP_ARCH_ASYNC="${false}"
SPACESHIP_ARCH_PREFIX="${SPACESHIP_ARCH_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_ARCH_SUFFIX="${SPACESHIP_ARCH_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_ARCH_SYMBOL="${SPACESHIP_ARCH_SYMBOL="☢︎ "}"
SPACESHIP_ARCH_COLOR="${SPACESHIP_ARCH_COLOR="red"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show arch status
spaceship_arch() {
  # If SPACESHIP_ARCH_SHOW is false, don't show arch section
  [[ $SPACESHIP_ARCH_SHOW == false ]] && return

  # Check if arch command is available for execution
  spaceship::exists arch || return

  local arch_version="$(arch)"

  # Check if shell is runing in default arm env
  [[ $arch_version == "arm64" ]] && return

  # Display arch section
  # spaceship::section utility composes sections. Flags are optional
  spaceship::section::v4 \
    --color "$SPACESHIP_ARCH_COLOR" \
    --prefix "$SPACESHIP_ARCH_PREFIX" \
    --suffix "$SPACESHIP_ARCH_SUFFIX" \
    --symbol "$SPACESHIP_ARCH_SYMBOL" \
    "$arch_version"
}
