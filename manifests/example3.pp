class puppet-camp-austin::example3 {
    Package { ensure => "installed" }

    case $operatingsystem {
        'RedHat', 'CentOS': { package {'git': } }
        /^(Debian|Ubuntu)$/:{ package {'git': } }
        default:            { notify {'git cannot be install for this package': } }
    }
}
