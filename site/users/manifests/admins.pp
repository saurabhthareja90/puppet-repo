class users::admins {
  $departments = [
    'security',
    'database',
    'unix',
  ]
  
  group { $departments:
   ensure => present,
 }
  
  users::managed_user { 'jose': 
    department => 'database',
  }
  
  users::managed_user { 'chen':
    department => 'security',
  }
  
  users::managed_user { 'alice':
    department => 'unix',
  }
}