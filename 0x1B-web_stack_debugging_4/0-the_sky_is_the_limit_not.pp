# Removing extra p
exec {'Additional p removed':
path     => '/usr/bin/:/bin/:/usr/sbin/',
provider => 'shell',
command  => "sed -i 's/15/4096/' /etc/default/nginx",
}
