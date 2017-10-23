Password-Generator:
  pkg.installed:
    - pkgs:
      - pwgen
      - libxml2-utils

/etc/bash_completion.d/00-aliases.sh:
  file.managed:
    - source: salt://resources/00-aliases.sh
