ARG BASE_TAG=focal

FROM jvkubjg/tmux:latest

USER jvkubjg

COPY ./build.sh /tmp/build.sh

COPY ./bashrc-additions.sh /tmp/bashrc-additions.sh

COPY init.vim "$HOME/.config/nvim/init.vim"
COPY plugin.vim "$HOME/.config/nvim/plugin.vim"
COPY post-plugin.vim "$HOME/.config/nvim/post-plugin.vim"
COPY ./.editorconfig "$HOME/.editorconfig"

COPY ./ycm-install /usr/local/bin/ycm-install

RUN /tmp/build.sh && \
	sudo rm /tmp/build.sh
