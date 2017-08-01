install_docker_compose:
  pkg.installed:
    - pkgs:
      - docker
      - docker-compose

Add docker directory:
  file.directory:
    - name: /srv/docker
    - dir_mode: 750
    - file_mode: 640
    - user: alexander
    - group: alexander
    - recurse:
      - user
      - group
      - mode