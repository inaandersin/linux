class artsy {
	exec {'apt-get update':
	command => '/usr/bin/apt-get update',
	refreshonly => true,
	}        

	package {'krita':
        ensure => 'installed',
        allowcdrom => 'true',
        }

	file { "/usr/share/xfce4/backdrops/wallpaper.png":
                source => "/etc/puppet/modules/artsy/files/Untitled_by_Aaron_Burde$
        }

        file { "/home/xubuntu/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml":
                content => template("bg/xfce4-desktop.xml"),
        }


	file {'/media/xubuntu/F5AB-1DB5/':
        ensure => 'directory',
        source => '/home/xubuntu/Pictures/',
        recurse => 'remote',
        }
}
