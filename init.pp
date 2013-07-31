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

include phantomjs