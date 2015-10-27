name 'current'
maintainer 'David Radcliffe'
maintainer_email 'radcliffe.david@gmail.com'
license 'MIT'
description 'Installs/Configures current'
long_description 'Installs current cli and configures current send services'
version '0.1.0'

recipe 'current', 'NOOP'
recipe 'current::install', 'Installs current binary'

supports 'ubuntu'

depends 'runit'
