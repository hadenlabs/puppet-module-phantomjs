# == Class phantomjs::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class phantomjs::params {

  case $::osfamily {
    'Debian': {
      $package_develop = [
                      "build-essential",
                      "g++",
                      "flex",
                      "bison",
                      "gperf",
                      "ruby",
                      "perl",
                      "libsqlite3-dev",
                      "libfontconfig1-dev",
                      "libicu-dev",
                      "libfreetype6",
                      "libssl-dev",
                      "libpng-dev",
                      "libjpeg-dev",
                      "python",
                      "libx11-dev",
                      "libxext-dev"
                              ],
      $package_dependences = [
                              "git"
                              ],
      $app_name = "phantomjs",
      $version_repository = "2.0"
    }
    'RedHat', 'Amazon': {
      $package_name = 'nil'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
