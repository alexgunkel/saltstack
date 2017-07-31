base:
  '*':
    - basic-text
    - removals
  'roles:docker':
    - match: grain
    - docker
  'roles:development':
    - match: grain
    - versioning
    - create-dev-dirs
  'roles:music':
    - match: grain
    - music
