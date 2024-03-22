# Ensure python3-pip is installed
package { 'python3-pip':
  ensure => installed,
}

# Define the command to install Flask 2.1.0
$flask_install_command = '/usr/bin/pip3 install Flask==2.1.0'

# Install Flask only if it's not already installed
exec { 'install_flask':
  command     => $flask_install_command,
  unless      => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  path        => ['/usr/local/bin', '/usr/bin', '/bin'],
  require     => Package['python3-pip'],
}

