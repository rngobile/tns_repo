class tns_repo {

  file { "${facts['oracle_home']}/network/admin/tnsnames.ora":
    ensure  => 'file',
    content =>  template('tns_repo/tnsnames.erb')
  }

}
