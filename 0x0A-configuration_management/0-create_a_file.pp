# create a file
file {'/tmp/holberton':
ensure => 'present',
mode => '0744',
owner => 'www-data',
group => 'www-data',
path => '/tmp/holberton',
content => 'I love Puppet',
}
