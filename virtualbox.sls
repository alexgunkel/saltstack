# This state installs VirtualBox with Extpack
#
# To reinstall the extpack simply delete /srv/*.vbox-extpack
# To update the extpack it's important to keep the original download name otherwise install will fail

{% set extpack = 'Oracle_VM_VirtualBox_Extension_Pack-4.3.10.vbox-extpack' %}


vbox_repo:
  pkgrepo.managed:
    - humanname: Vagrant repo
    - name: deb http://download.virtualbox.org/virtualbox/debian xenial contrib
    - key_url: https://www.virtualbox.org/download/oracle_vbox_2016.asc
    - file: /etc/apt/sources.list.d/virtualbox.list

vbox_apt_update:
  cmd.wait:
    - name: apt-get update
    - watch:
      - pkgrepo: vbox_repo

virtualbox-5.1:
  pkg.installed:
    - require:
      - pkgrepo: vbox_repo
        
download_virtualbox_extpack:
  cmd.run:
    - name: wget http://download.virtualbox.org/virtualbox/4.3.10/{{ extpack }} -O /srv/{{ extpack }}
    - unless: test -f /srv/{{ extpack }}

install_virtualbox_extpack:
  cmd.wait:
    - name: VBoxManage extpack install /srv/{{ extpack }}
    - watch:
      - cmd: download_virtualbox_extpack

/etc/default/virtualbox:
  file.managed:
    - source: salt://virtualbox_default
    - user: root
    - group: root
    - mode: 644

/var/log/virtualbox.log:
  file.managed:
    - user: root
    - group: vboxusers
    - mode: 664

# createhome must be true, otherwise the vboxwebsrv refuses to start
vbox-user:
  group.present:
    - name: vboxusers
  user.present:
    - name: vbox
    - groups: 
      - vboxusers
    - createhome: True
    - shell: /bin/false

vboxweb-service:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/default/virtualbox