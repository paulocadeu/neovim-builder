FROM debian:latest

RUN <<EOF
  apt-get update
  apt-get install -y \
    git              \
    ninja-build      \
    gettext          \
    cmake            \
    unzip            \
    curl             \
    build-essential

  cd /tmp
  git clone https://github.com/neovim/neovim
  cd neovim
  git checkout stable
  make CMAKE_BUILD_TYPE=RelWithDebInfo
EOF

