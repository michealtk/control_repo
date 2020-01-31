node default{
  file{ '/root/README':
    ensure  => file,
    content => 'this is a readme - mtk',
    owner   => 'root',
  }
}

node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
  }
}

# can use regex to reference multiple nodes
node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}

