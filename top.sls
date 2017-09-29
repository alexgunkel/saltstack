base:
  '*':
    - basic-text
    - bash
  'roles:docker':
    - match: grain
    - docker
  'roles:development':
    - match: grain
    - versioning
    - create-dev-dirs
  'roles:programming':
    - match: grain
    - golang
  'roles:music':
    - match: grain
    - music
  'roles:latex':
    - match: grain
    - latex
