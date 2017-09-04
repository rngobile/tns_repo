class tns_repo {

  file { '/u01/tnsnames.ora' :
    ensure  => 'file',
    content =>  template('tns_repo/tnsnames.erb')
  }

}
