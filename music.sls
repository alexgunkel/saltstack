Spotify:
  pkgrepo.managed:
    - humanname: Spotify repo
    - name: deb http://repository.spotify.com stable non-free
    - keyserver: keyserver.ubuntu.com
    - keyid: BBEBDCB318AD50EC6865090613B00F1FD2C19886 
    - file: /etc/apt/sources.list.d/spotify.list
    - require_in:
      - spotify-client

  pkg.latest:
    - name: spotify-client
    - refresh: True