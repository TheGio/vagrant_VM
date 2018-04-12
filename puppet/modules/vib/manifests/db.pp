#class vib::db

class vib::db {

#Centos 7 - install mariadb
  package { 'mariadb-server':
    ensure => installed,
  } ->

# ensure mariadb service is running
  service { 'mariadb':
    ensure => running,
    enable => true,
  } ->

  file { '/data':
    ensure => directory,
  } ->

# deploy a sql file to set up the sample db and data
  file { '/data/dbdata.sql':
    ensure => present,
    source => 'puppet:///modules/vib/dbdata.sql',
  }
}
# EOF

