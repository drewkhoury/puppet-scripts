class { timezone:
  zone => "Australia/Melbourne",
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