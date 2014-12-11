name "dbserver"
description "Database server"
run_list "recipe[jrdevsetup::database]"
default_attributes({
  "jr-mysql" => {
    "bind_address" => "0.0.0.0"
  },
  "mysql" => {
    "bind_address" => "0.0.0.0",
    "server_root_password" => "root",
    "server_debian_password" => "root",
    "server_repl_password" => "root",
    "allow_remote_root" => true,
    "tunable" => {
      "innodb_buffer_pool_size" => "128M",
      "key_buffer_size" => "16M"
    }
  }
})
