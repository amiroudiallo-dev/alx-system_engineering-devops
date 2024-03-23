# Ensure python3-pip is installed
package { 'flask':
  ensure => '2.1.0',
  provider => 'python3-pip'
}

