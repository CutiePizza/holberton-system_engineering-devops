# kill a process
exec {'pkill':
command => 'pkill -f killmenow',
path    => '/usr/bin/:/usr/bin/x11/:/usr/share/man/man1/:/bin/',
}
