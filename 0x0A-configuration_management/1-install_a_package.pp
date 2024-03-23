# Assurez-vous que python3-pip est installé
package { 'python3-pip':
  ensure => installed,
}

# Installez Flask en utilisant pip3
exec { 'install_flask':
  command => '/usr/local/bin/pip3 install Flask==2.1.0',
  unless  => '/usr/local/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  require => Package['python3-pip'],
}

