if platform_family?("rhel")
	
	package "ruby-devel" do
		action :install
	end
	
	package "sqlite" do
		action :install
	end
	
	package "sqlite-devel" do
		action :install
	end
	
	package "ruby-sqlite3" do
		action :install
	end
	
	package "rubygems" do
		action :install
	end
	
	gem_package "i18n" do
		action :remove 
	end	
	
	gem_package "i18n" do
		version "0.6.11"
		action :install 
	end
	
	gem_package "mailcatcher" do
		action :install
	end	
	
	# then need to run
	# mailcatcher --ip 192.168.56.100
	
end
