
#1. Download sonarqube from https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-5.3.zip

remote_file "/opt/#{node['sonarqube']['distribution_file']}" do
  source node['sonarqube']['distribution_url']
  mode '0755'
  action :create
end

package "unzip"

#2. Unzip to /opt/sonarqube-<version>

execute "unzip /opt/#{node['sonarqube']['distribution_file']} -d /opt/" do
	not_if { ::File.directory?(node['sonarqube']['install_dir']) }
end

#3. Symlink home directory to install directory
link node['sonarqube']['home_dir'] do
	to node['sonarqube']['install_dir']
	notifies :restart, "service[sonar]" 
end

#4. Symbolic link to sonar.sh
link node['sonarqube']['bin_path'] do
	to "#{node['sonarqube']['home_dir']}/bin/linux-x86-64/sonar.sh"
end

template "/etc/init.d/sonar" do
	source "sonar.erb"
	mode "755"
end

service "sonar" do
	supports restart: true, reload: false, status: true
	action [:enable, :start]
end