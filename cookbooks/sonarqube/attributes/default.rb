node.default['java']['install_flavor'] = 'oracle'
node.default['java']['jdk_version'] = '7'
node.default['java']['oracle']['accept_oracle_download_terms'] = true

default['sonarqube']['install_flavor'] = "package" #distribution

default['sonarqube']['distribution_home'] = "https://sonarsource.bintray.com/Distribution/sonarqube/"
default['sonarqube']['application']="sonarqube"
default['sonarqube']['version']="5.3"
default['sonarqube']['checksum']="9ca7f69cce0bbbe519fc08da7c592d56"

default['sonarqube']['install_dir'] = "/opt/#{node['sonarqube']['application']}-#{node['sonarqube']['version']}"

default['sonarqube']['home_dir'] = "/opt/sonarqube"

default['sonarqube']['distribution_file'] = "#{node['sonarqube']['application']}-#{node['sonarqube']['version']}.zip"
default['sonarqube']['distribution_url'] = "#{node['sonarqube']['distribution_home']}#{node['sonarqube']['distribution_file']}"

default['sonarqube']['bin_path'] = "/usr/bin/sonar"