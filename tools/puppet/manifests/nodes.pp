import "mailerq"
import "mailerq_apache"
import "mailerq_mongo"

node "devel" {
  user {'mailerq':
    groups => ['sudo'],
    ensure => present,
    shell => '/bin/false',  #prevent user from logging in?
  }

  Exec {
      path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/", "/usr/local/node/node-default/bin/" ],
      timeout   => 0,
  }

  class { 'apt':
    always_apt_update    => true,
    disable_keys         => undef,
    proxy_host           => false,
    proxy_port           => '8080',
    purge_sources_list   => false,
    purge_sources_list_d => false,
    purge_preferences_d  => false,
    update_timeout       => undef
  }

  #Set system timezone to UTC
  class { "timezone":
    timezone => 'UTC',
  }

  include '::rabbitmq'

  #include mailerq

}
