# shellcheck disable=SC2148
# https://www.yuque.com/lwmacct/pkg/brew

eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"

export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"
export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/zip/bin:$PATH"
export PATH="/opt/homebrew/opt/unzip/bin:$PATH"

__help() {

  :
  # util-linux
  cat >- <<"EOF"
util-linux is keg-only, which means it was not symlinked into /opt/homebrew,
because macOS provides the uuid.h header.

If you need to have util-linux first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"' >> ~/.zshrc
  echo 'export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"' >> ~/.zshrc

For compilers to find util-linux you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/util-linux/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/util-linux/include"

For pkg-config to find util-linux you may need to set:
  export PKG_CONFIG_PATH="/opt/homebrew/opt/util-linux/lib/pkgconfig"

EOF

  # curl
  cat >- <<"EOF"
For compilers to find curl you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

For pkg-config to find curl you may need to set:
  export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"

EOF
}
