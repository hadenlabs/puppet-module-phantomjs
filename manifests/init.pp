# == Class: phantomjs
#
# Full description of class module here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class phantomjs (
  $package_name = $::phantomjs::params::package_name
) inherits ::phantomjs::params {

  # validate parameters here

  class { '::phantomjs::install': } ->
    Class['::phantomjs']
}
