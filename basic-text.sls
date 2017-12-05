basic editors:
  pkg.installed:
    - pkgs:
      - vim
      - vim-gnome

Remove other editors:
  pkg.removed:
    - pkgs:
      - nano
      - emacs
      - atom4
