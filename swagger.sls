Install swagger:
  cmd.run:
    - name: 'WGET=`which wget`; $WGET https://oss.sonatype.org/content/repositories/releases/io/swagger/swagger-codegen-cli/2.2.1/swagger-codegen-cli-2.2.1.jar /opt/swagger/'
    - unless: test -f /opt/swagger/swagger-codegen-cli-2.2.1.jar
    - cwd: /root/

