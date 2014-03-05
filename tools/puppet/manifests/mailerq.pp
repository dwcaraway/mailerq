class mailerq {

   #TODO setup mailerq

#    include '::rabbitmq'

    include wget

    wget::fetch { "download Mailerq deb file x64":
       source      => 'http://mailerq.com/Resources/packages/mailerq-0.7.4-x86_64.deb',
       destination => '/tmp/mailerq-0.7.4-x86_64.deb',
       timeout     => 0,
       verbose     => false,
    }->
    package { "mailerq":
      provider => dpkg,
      ensure   => latest,
      source   => "/tmp/mailerq-0.7.4-x86_64.deb"
    }
}
