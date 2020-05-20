exec {'Additional p removed':
command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
path    => '/usr/bin/:/bin/:/usr/sbin/',
}
