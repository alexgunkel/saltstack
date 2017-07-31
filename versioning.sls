Version management:
  pkg.installed:
    - name: git

Touch global aliases file:
  file.exists:
    - name: /etc/profile.d/00-aliases.sh

Set Git aliases:
  file.append:
    - name: /etc/profile.d/00-aliases.sh
    - text: alias gst='git status'