#
# Cookbook:: Chef_Challenge
# Recipe:: default
#
# 

#Setup repo

yum_repository 'docker-stable'  do
  node['yum']['docker-stable'].each do |config, value|
    send(config.to_sym, value) unless value.nil? || config == 'managed'
  end
end if node['yum']['docker-stable']['managed']

#Install Docker
package 'docker-ce'

#Start Docker service
service "docker" do
  action :start
end

#Install Curl  
package 'curl'

#Install Docker Compose
execute "sudo curl -L #{node['docker-compose']['url']}-`uname -s`-`uname -m` -o #{node['docker-compose']['bin']}"

file node['docker-compose']['bin'] do
  mode '755'
end

#Create directory base
directory "#{node['source']['con1']}" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  recursive true
end

#Copy directory source
remote_directory "#{node['source']['con1']}/" do
  source 'con1'
  files_owner 'root'                                                                 
  files_group 'root'
  files_mode '0755'
  action :create
  recursive true                                                                      
end           

execute "Executing docker-compose" do
    command "#{node['docker-compose']['bin']} -f #{node['source']['con1']}/docker-compose.yml up -d"
    user 'root'
    group 'root'
end




