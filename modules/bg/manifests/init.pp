class bg {
	file { "/usr/share/xfce4/backdrops/wallpaper.png":
		source => "/etc/puppet/modules/bg/files/Untitled_by_Aaron_Burden.jpg",
	}

	file { "/home/xubuntu/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml":
		content => template("bg/xfce4-desktop.xml"),
	}
}

