# make config file
file {'~/.ssh/config':
ensure   => 'present',
path     => '~/.ssh/config',
content  => "Host 35.231.236.18
User ubuntu
IdentityFile ~/.ssh/holberton
PasswordAuthentication no"
}
