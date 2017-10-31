class apache {
        package {'apache2':
                ensure => 'installed',
                allowcdrom => 'true',
       }
}
