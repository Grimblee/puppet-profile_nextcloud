# includes all repos needed for the profile
class profile_nextcloud::repos {
  yumrepo { 'remi_php71':
    baseurl    => '',
    descr      => 'Remi\'s PHP 7.1 RPM repository for Centos 7 - x86_65',
    enabled    => '1',
    gpgcheck   => '1',
    gpgkey     => 'https://rpms.remirepo.net/RPM-GPG-KEY-remi',
    mirrorlist => 'http://rpms.remirepo.net/enterprise/7/php71/mirror',
  }
  yumrepo { 'epel':
    baseurl    => '',
    descr      => 'EPEL',
    enabled    => '1',
    gpgcheck   => '1',
    gpgkey     => 'https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7',
    mirrorlist => 'https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch',
  }
}
