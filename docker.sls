docker:
  pkg.installed:
    - pkgs:
      - docker
      - docker-compose
  file.directory:
    - name: /srv/docker
    - user: alexander
    - group: alexander
    - dir_mode: 750
    - file_mode: 640
    - recurse:
      - user
      - group
      - mode
