class artsy {
	exec {'apt-get update':
	command => '/usr/bin/apt-get update',
	refreshonly => true,
	}        

	package {'krita':
        ensure => 'installed',
        allowcdrom => 'true',
        }

	file {'/media/xubuntu/F5AB-1DB5/':
        ensure => 'directory',
        source => '/home/xubuntu/Pictures/',
        recurse => 'remote',
        }
}
