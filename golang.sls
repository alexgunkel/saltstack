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
      - vim-gocomplete

# That will be the dev directory
################################
Create Go DIR:
  file.directory:
    - name: /srv/dev/go
    - makedirs: True
    - dir_mode: 777
    - file_mode: 644

Set global variables:
  file.append:
    - name: /etc/bash.bashrc
    - text:
      - export GOPATH=/srv/dev/go
      - PATH=${PATH}:${GOPATH//://bin:}/bin
