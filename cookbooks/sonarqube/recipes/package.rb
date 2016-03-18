apt_repository "sonar" do
	repo_name "sonar"
	uri "http://downloads.sourceforge.net/project/sonar-pkg/deb"
	components ['binary/']
	trusted true
	action :add
end

package "Installing Sonar" do
	package_name "sonar"
	version "5.3"
	action :install
end




cookbook_file "/etc/init.d/sonar" do
	source "sonar"
	action :create
end




service "sonar" do
	supports restart: true, reload: false, status: true
	action [:enable, :start]
end

