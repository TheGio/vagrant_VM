#class vib::web

class vib::web {

#install apache
  package { 'httpd':
    ensure => installed,
  } ->

# ensure httpd service is enabled and running
  service { 'httpd':
    ensure => running,
    enable => true,
  } 

# install php package
  package { 'php':
    ensure => installed,
  } ->

# index.php/app file
  file { '/var/www/html/index.php':
    notify => Service['httpd'],
    ensure => file,
    source => 'puppet:///modules/vib/index.php',
    require => Package['httpd'],
  }

}

#EOF
