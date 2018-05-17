define users::managed_user (
  #$name       = $title,
  $department = $name,
)  {
  File { 
    owner  => $name,
    group  => $department,
    mode   => '0640',
  }

  user { $name:
    ensure => present,
    gid    => $department,
  }
  
  file { "/home/${name}":
    ensure => directory,
  }
  
  file { "/home/${name}/.ssh":
    ensure => directory,
    mode   => '0700',
  }
}