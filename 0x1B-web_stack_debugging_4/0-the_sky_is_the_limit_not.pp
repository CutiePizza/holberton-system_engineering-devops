# Changing value
exec {'Changing value':
path     => '/usr/bin/:/bin/:/usr/sbin/',
provider => 'shell',
command  => "sed -i 's/15/4096/' /etc/default/nginx",
}

# Restarting nginx
exec {'Restart nginx':
path     => '/usr/bin/:/bin/:/usr/sbin/',
provider => 'shell',
command  => "sudo service nginx restart",
}
