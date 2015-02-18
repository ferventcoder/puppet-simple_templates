class simple_templates {

  case $::operatingsystem {
    windows: { $temp_dir = 'c:/temp' }
    default: { $temp_dir = '/private/tmp' }
  }


  file {["$temp_dir","$temp_dir/newlines"]:
    ensure => directory,
    source_permissions => ignore,
  }

  file {"$temp_dir/newlines/crlf_newlines_template.txt":
    ensure => file,
    content => template("simple_templates/crlf_newlines.erb"),
    source_permissions => ignore,
  }

  file {"$temp_dir/newlines/unix_newlines_template.txt":
    ensure => file,
    content => template("simple_templates/unix_newlines.erb"),
    source_permissions => ignore,
  }

  file {"$temp_dir/newlines/mixed_newlines_template.txt":
    ensure => file,
    content => template("simple_templates/mixed_newlines.erb"),
    source_permissions => ignore,
  }

  file {"$temp_dir/newlines/crlf_newlines_file.txt":
    ensure => file,
    source => "puppet:///modules/simple_templates/crlf_newlines.txt",
    source_permissions => ignore,
  }

  file {"$temp_dir/newlines/unix_newlines_file.txt":
    ensure => file,
    source => "puppet:///modules/simple_templates/unix_newlines.txt",
    source_permissions => ignore,
  }

  file {"$temp_dir/newlines/mixed_newlines_file.txt":
    ensure => file,
    source => "puppet:///modules/simple_templates/mixed_newlines.txt",
    source_permissions => ignore,
  }

}
