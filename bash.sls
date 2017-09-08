Password-Generator:
  pkg.installed:
    - name: pwgen

/etc/bash_completion.d/00-aliases.sh:
  file.managed:
    - source: salt://resources/00-aliases.sh