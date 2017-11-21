basic browsers:
  pkg.installed:
    - pkgs:
      - chromium-browser

Google Chrome:
  pkgrepo.managed:
    - humanname: Google repository
    - name: deb http://dl.google.com/linux/chrome/deb/ stable main
    - key_url: https://dl.google.com/linux/linux_signing_key.pub
    - file: /etc/apt/sources.list.d/google-chrome.list
    - require_in:
      - google-chrome-stable

  pkg.latest:
    - name: google-chrome-stable
    - refresh: True
