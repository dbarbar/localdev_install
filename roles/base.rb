name "base"
description "Base server"
run_list "recipe[jrdevsetup::tools]"
default_attributes({
  "avahi" => {
    "deny_interfaces" => [ "eth0" ],
    "domain" => "sbdev"
  },
  "build_essential" => {
    "compiletime" => true
  },
  "jrdevsetup" => {
    "drupal_version" => "7.x",
    "local_settings_php" => {
      "conf" => {
        "dev_mem" => 1,
        "dev_query" => 1,
        "dev_timer" => 1,
        "devel_query_display" => 1,
        "devel_store_queries" => 1,
        "mimemail_engine" => "mimemail",
        "search_cron_limit" => 0,
        "smtp_host" => "",
        "smtp_hostbackup" => "",
        "smtp_on" => 0,
      },
    },
  },
})
