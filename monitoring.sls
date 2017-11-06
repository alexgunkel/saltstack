Install network monitoring:
  pkg.installed:
    - pkgs:
      - iftop
      - tcpdump
      - tcpstat
