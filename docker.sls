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

get-docker-compose:
  cmd.run:
    - name: 'CURL=`which curl`; $CURL -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose'
    - unless: test -f /usr/local/bin/docker-compose
    - cwd: /root/

activate-docker-compose:
  cmd.run:
    - name: 'chmod +x /usr/local/bin/docker-compose'
    - unless: test -x /usr/local/bin/docker-compose

Clone the jwilder nginx proxy:
  git.latest:
    - name: https://github.com/jwilder/nginx-proxy
    - rev: master
    - target: /srv/docker/jwilder/nginx-proxy

