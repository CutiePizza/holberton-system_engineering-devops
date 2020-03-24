# e a file
file {'~/.ssh/config':
ensure  => 'present',
path    => '~/.ssh/config',
mode    => '0744',
content => 'Host 35.231.236.18\nUser ubuntu\IdentityFile ~/.ssh/holberton\nPasswordAuthentication no'
}
