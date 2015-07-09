# == Class phantomjs::install
#
# This class is called from module for install.
#
class phantomjs::install {

  package {
    $::phantomjs::package_develop:
    ensure => present,
  }

  exec { "clone repository"
    command => "git clone git://github.com/ariya/phantomjs.git",
    require => $::phantomjs::package_dependences,
    unless => "ls $::phantomjs::app_name"
  }

  exec { "build"
    command => [
                "cd $::phantomjs::app_name",
                "git checkout $::phantomjs::version_repository",
                "./build.sh"
                ],
    require => [Exec["clone repository"]],
    unless => "type $::phantomjs::app_name"
  }

}
