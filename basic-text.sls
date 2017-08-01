basic editors:
  pkg.installed:
    - pkgs:
      - vim

Remove other editors:
  pkg.removed:
    - pkgs:
      - nano
      - gvim
      - emacs
      - atom4
