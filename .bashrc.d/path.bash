# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# rust
export CARGO_HOME="$HOME/.cargo"
if [ -d $CARGO_HOME ]; then
  case ":${PATH}:" in
  *:"$CARGO_HOME/bin":*) ;;
  *) PATH="$CARGO_HOME/bin:$PATH" ;;
  esac
fi

# go
export GOPATH="$HOME/go"
if [ -d $GOPATH ]; then
  case ":${PATH}:" in
  *:"$GOPATH/bin":*) ;;
  *) PATH="$GOPATH/bin:$PATH" ;;
  esac
fi

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
if [ -d $PNPM_HOME ]; then
  case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) PATH="$PNPM_HOME:$PATH" ;;
  esac
fi

# bun
export BUN_INSTALL="$HOME/.bun"
if [ -d $BUN_INSTALL ]; then
  case ":${PATH}:" in
  *:"$BUN_INSTALL/bin":*) ;;
  *) PATH="$BUN_INSTALL/bin:$PATH" ;;
  esac
fi

# deno
export DENO_INSTALL="$HOME/.deno"
if [ -d $DENO_INSTALL ]; then
  case ":${PATH}:" in
  *:"$DENO_INSTALL/bin":*) ;;
  *) PATH="$DENO_INSTALL/bin:$PATH" ;;
  esac
fi

export PATH
