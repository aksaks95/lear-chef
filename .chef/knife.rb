# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "aksaks95"
client_key               "#{current_dir}/aksaks95.pem"
validation_client_name   "aks_devops-validator"
validation_key           "#{current_dir}/aks_devops-validator.pem"
chef_server_url          "https://api.chef.io/organizations/aks_devops"
cookbook_path            ["#{current_dir}/../cookbooks"]
