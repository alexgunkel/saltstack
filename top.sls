base:
  '*':
    - basic-text
  'roles:docker':
    - match: grain
    - docker
  'roles:development':
    - match: grain
    - versioning
    - create-dev-dirs
    - virtualbox
  'roles:music':
    - match: grain
    - music
