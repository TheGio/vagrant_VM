#class vib::web

class vib::web {

#install apache
  package { 'httpd':
    ensure => installed,
  } ->

# ensure httpd service is running
  service { 'httpd':
    ensure => running,
    enable => true,
  }

}

#EOF
