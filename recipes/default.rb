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

#package 'yum-utils'
#package 'device-mapper-persistent-data'
#package 'lvm2'

#execute "Enable Docker repo" do
#  command "yum-config-manager --add-repo #{node['yum']['docker-repo']['url']}"
#  user "root"
#  group "root"
#end


#Enable IPv4 Forwarding
#execute "Enable IPv4 Fowarding" do
#  command "/sbin/sysctl -w net.ipv4.ip_forward=1"
#  user "root"
#  group "root"
#end

#service "network" do
#  action :restart
#end

#Install Docker
package 'docker-ce'

#Start Docker service
service "docker" do
  action [:enable, :start]
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

#Enable/Start Firewall
service "firewalld" do
  action [:enable, :start]
end

#Add http firewall rule
execute "Firewall enable http" do
    command "firewall-cmd --permanent --zone=public --add-service=http"
    user 'root'
    group 'root'
end

#execute "Firewall disable ssh" do
#    command "firewall-cmd --permanent --zone=public --remove-service=ssh"
#    user 'root'
#    group 'root'
#end

execute "Firewall reload" do
    command "firewall-cmd --reload"
    user 'root'
    group 'root'
end


