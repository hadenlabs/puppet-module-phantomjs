# == Class phantomjs::install
#
# This class is called from module for install.
#
class phantomjs::install {

  package { $::phantomjs::package_name:
    ensure => present,
  }

}
