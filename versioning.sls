Version management:
  pkg.installed:
    - name: git

/etc/gitconfig:
  file.managed:
    - source: salt://gitconfig

