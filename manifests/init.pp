class simpleconf {
  
  $custom_memory = pick($::simple_custom_memory, hiera('simple_custom_memory','1024'))
  $apptype = pick($::simple_apptype, hiera('simple_apptype', 'generic'))


  file {'/etc/simple.conf':
    owner    => root,
    group    => root,
    mode     => 0644,
    content => template("simpleconf/simple.conf.erb"),
  }

}
