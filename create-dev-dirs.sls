Create the dev folders:
  group.present:
    - name: www-data
  user.present:
    - name: www-data
    - groups:
      -  www-data
  file.directory:
    - name: /srv/www
    - user: www-data
    - shell: /bin/false
    - group: www-data
    - dir_mode: 755
    - file_mode: 644
    - recurse:
      - mode
      - user
      - group
