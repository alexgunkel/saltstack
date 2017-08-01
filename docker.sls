install_docker_packages:
  pkg.installed:
    - pkgs:
      - docker
      - docker-compose

Add directory:
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

Clone the jwilder nginx proxy:
  git.latest:
    - name: https://github.com/jwilder/nginx-proxy
    - rev: master
    - target: /srv/docker/jwilder/nginx-proxy