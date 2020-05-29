# Changing value
exec {'Changing value':
path     => '/usr/bin/:/bin/:/usr/sbin/',
provider => 'shell',
command  => "sudo sed -i 's/15/5000/g' /etc/default/nginx",
}

exec {'Restart nginx':
path     => '/usr/bin/:/bin/:/usr/sbin/',
provider => 'shell',
command  => 'sudo service nginx restart',
}
