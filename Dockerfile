FROM debian:stable
RUN apt update \
 && apt install -y \
    git ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
RUN git clone https://github.com/neovim/neovim
RUN cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo && make install
RUN sh -c 'curl -fLo /usr/local/share/nvim/runtime/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
RUN useradd -ms /bin/bash user
USER user
WORKDIR /home/user
COPY --chown=user . /home/user/.config/nvim
#ENTRYPOINT nvim
