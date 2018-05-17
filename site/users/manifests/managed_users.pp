define users::managed_users (
  $home = "/home/${title}",
  $shell = '/bin/bash',
){
  user { "${title}":
    ensure           => 'present',
    comment          => "User ${title}",
    home             => "${home}",
    shell            => "${shell}",
  }
}