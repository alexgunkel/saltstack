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


Clone the Lite IDE:
  git.latest:
    - name: https://github.com/visualfc/liteide
    - rev: master
    - target: /opt/go/liteide
  cmd.run:
    - name: cd /opt/go/liteide/build && ./update_pkg.sh 1>/dev/null && QTDIR=/usr ./build_linux.sh 1>/dev/null
    - unless: test -f /usr/bin/liteide

install:
  file.symlink:
    - name: /usr/bin/liteide
    - target: /opt/go/liteide/build/liteide/bin/liteide
