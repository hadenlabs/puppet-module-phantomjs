# == Class phantomjs::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class phantomjs::params {

  case $::osfamily {
    'Debian': {
      $package_name = 'vim'
    }
    'RedHat', 'Amazon': {
      $package_name = 'vim-enhanced'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
