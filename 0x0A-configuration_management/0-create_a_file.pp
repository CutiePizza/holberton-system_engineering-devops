# create a file
file {'/tmp/holberton':
mode => 0744,
uid => www-data,
gid => www-data,
content => I love Puppet"
}
