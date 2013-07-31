class { timezone:
  zone => "Australia/Melbourne",
}

package { "python-mysqldb":
  ensure => latest,
}

package { "python-pip":
  ensure => latest,
}

package { "selenium":
  ensure => latest,
  provider => pip,
  require => Package['python-pip'],
}

# to fix: phantomjs: error while loading shared libraries: libfontconfig.so.1
package { "fontconfig":
  ensure => latest,
}
include phantomjs