FROM debian:latest

# Install essentials.
RUN apt update \
 && apt install -y \
    git ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen wget \
    python3-venv npm

# Install latest Go.
RUN wget https://go.dev/dl/go1.19.1.linux-amd64.tar.gz && tar -C /usr/local -xzpvf go1.19.1.linux-amd64.tar.gz

# Build stable Neovim & Vim-Plug.
RUN git clone https://github.com/neovim/neovim
RUN cd neovim && git checkout stable && make CMAKE_BUILD_TYPE=RelWithDebInfo && make install
RUN sh -c 'curl -fLo /usr/local/share/nvim/runtime/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Setup context.
RUN useradd -ms /bin/bash user
USER user
WORKDIR /home/user
ENV PATH=$PATH:/usr/local/go/bin
COPY --chown=user:user . /home/user/.config/nvim/

ENTRYPOINT nvim
