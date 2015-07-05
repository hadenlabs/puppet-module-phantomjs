# == Class phantomjs::service
#
# This class is meant to be called from module.
# It ensure the service is running.
#
class phantomjs::service {

  service { $::phantomjs::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
