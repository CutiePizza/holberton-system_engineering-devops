# Changing value
exec {'Changing value':
path     => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
provider => 'shell',
command  => "sudo sed -i 's/15/5000/g' /etc/default/nginx",
}

exec {'Restart nginx':
path     => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
provider => 'shell',
command  => 'sudo service nginx restart',
}
