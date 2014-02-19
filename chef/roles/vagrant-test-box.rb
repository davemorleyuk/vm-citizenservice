# Name of the role should match the name of the file
name "vagrant-test-box"

default_attributes(
    "build_essential" => {
        "compiletime" => true
    }
)

override_attributes(
		"apache" => {
			"user" => "vagrant",
			"group" => "vagrant"
		},
    "mysql" => {
        "server_root_password" => 'root',
        "server_repl_password" => 'repl',
        "server_debian_password" => 'debian',
#        "bind_address" => '0.0.0.0'
    },
    "zendserver" => {
    	"version" => '6.2',
    	"phpversion" => '5.3',
    	"production" => 'false',
    	"apikeyname" => 'admin2',
    	"apikeysecret" => '98167463cc69d2915360609b94404ee2749f33f19d8b39d8671ab4c29321a535',
    	"adminpassword" => 'advantage',
    	"adminemail" => 'davem@aspin.co.uk',
    	"dbhost" => '127.0.0.1',
    	"dbusername" => 'root',
    	"dbpassword" => 'root'
    }
)

run_list(
#	"recipe[yum]",

	"recipe[apt]",
	"recipe[build-essential]",
	
		#	"recipe[custom::add_yum_repos]",
		#	"recipe[openssl]",
		#	"recipe[apache2]",
		#	"recipe[mysql]",

		#	"recipe[php]",
		#	"recipe[php::module_mysql]",
		#	"recipe[apache2::mod_ssl]",
		#	"recipe[custom::zend]",
		#	"recipe[custom::vhosts]"

	"recipe[mysql]",
	"recipe[mysql::server]",
  "recipe[database::mysql]",
  "recipe[database::import]",

	"recipe[zendserver::single]",
	"recipe[custom::vhosts]"
	
)
