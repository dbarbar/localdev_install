name "webserver"
description "Web server"
run_list "recipe[jrdevsetup::web]"
default_attributes({
  "composer" => {
    "php_recipe" => "php",
    "url" => "http://getcomposer.org/composer.phar"
  },
  "phing" => {
    "install_method" => "pear"
  }
})
