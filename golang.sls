# Install golang
################
install_golang:
  pkg.installed:
    - pkgs:
      - golang
      - qt4-dev-tools
      - libqt4-dev
      - libqtcore4
      - libqtgui4
      - libqtwebkit-dev
      - g++

#######################################################################################
# The Lite IDE is available via github. We first clone the sources, then install them.#
#                                                                                     #
# What is still needed is a way to install only when changes are made. At the moment, #
# this is done when the symlink in /usr/bin is present. But obviously, that's no good #
# choice                                                                              #
#######################################################################################
Clone the Lite IDE:
  git.latest:
    - name: https://github.com/visualfc/liteide
    - rev: master
    - target: /opt/go/liteide
  cmd.run:
    - name: cd /opt/go/liteide/build && ./update_pkg.sh 1>/dev/null && QTDIR=/usr ./build_linux.sh 1>/dev/null
    - unless: test -f /usr/bin/liteide

# Symlink for the binary
########################
install:
  file.symlink:
    - name: /usr/bin/liteide
    - target: /opt/go/liteide/build/liteide/bin/liteide

# That will be the dev directory
################################
Create Go DIR:
  file.directory:
    - name: /srv/dev/go
    - makedirs: True
    - dir_mode: 755
    - file_mode: 644

Set global variables:
  file.append:
    - name: /etc/bash.bashrc
    - text:
      - export GOPATH=/srv/dev/go
      - PATH=${PATH}:${GOPATH//://bin:}/bin
