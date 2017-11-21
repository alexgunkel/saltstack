basic:
  pkg.installed:
    - pkgs:
      - sqlite3
      - libsqlite3-dev

Download Postman:
  cmd.run:
    - name: 'CURL=`which curl`; T=/tmp/postman.tar.gz; $CURL -L https://dl.pstmn.io/download/latest/linux64 -o $T && tar -xzf $T -C /opt && rm $T '
    - unless: test -t /opt/Postman
    - cwd: /root/

Install Postman:
  cmd.run:
    - name: 'ln -s /opt/Postman/Postman /usr/bin/postman'
    - unless: test -e /usr/bin/postman
