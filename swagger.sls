Make sure java is installed:
  pkg.installed:
    - pkgs:
      - gcj-jre

Install swagger:
  cmd.run:
    - name: 'CURL=`which curl`; $CURL https://oss.sonatype.org/content/repositories/releases/io/swagger/swagger-codegen-cli/2.2.1/swagger-codegen-cli-2.2.1.jar -o /opt/swagger/swagger-codegen-cli.jar'
    - unless: test -f /opt/swagger/swagger-codegen-cli.jar
    - cwd: /root/

/opt/swagger/swagger-script.sh:
  file.managed:
    - source: salt://resources/swagger-script.sh
    - user: root
    - group: root
    - mode: 755

Create Symlink:
  file.symlink:
    - name: /usr/bin/swagger
    - target: /opt/swagger/swagger-script.sh

