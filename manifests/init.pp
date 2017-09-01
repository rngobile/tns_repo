class tns_repo {

  file { '/u01/tnsnames.ora' :
    ensure  => 'file',
    content =>  epp('tns_repo/tnsnames.epp')
  }

}
