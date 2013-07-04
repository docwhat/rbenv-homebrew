if command -v brew >/dev/null; then
  before_install set_up_homebrew
fi

set_up_homebrew() {
  local -a externals=( openssl kerberos readline zlib )
  for external in "${externals[@]}"; do
    local dir="$(brew --prefix ${external} 2>/dev/null || true)"
    if [ -d "$dir"  ]; then
      echo "Using Homebrew's version of ${external}" 1>&2
      RUBY_CONFIGURE_OPTS="${RUBY_CONFIGURE_OPTS:-} --with-${external}-dir=$dir"
      export RUBY_CONFIGURE_OPTS
    fi
  done
}
