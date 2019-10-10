
base_url = "https://download.docker.com/linux/centos/#{node['platform_version'].to_i}/x86_64"
gpg_key = 'https://download.docker.com/linux/centos/gpg'

#Docker standard release repo
#default['yum']['docker-repo']['url'] = "https://download.docker.com/linux/centos/docker-ce.repo"

#Docker-stable repo
default['yum']['docker-stable']['baseurl'] = "#{base_url}/stable"
default['yum']['docker-stable']['description'] = 'Docker Stable Respository'
default['yum']['docker-stable']['gpgkey'] = gpg_key
default['yum']['docker-stable']['gpgcheck'] = true
default['yum']['docker-stable']['enabled'] = true
default['yum']['docker-stable']['managed'] = true
#Docker-compose parameters
default['docker-compose']['url']='https://github.com/docker/compose/releases/download/1.16.1/docker-compose'
default['docker-compose']['bin']='/usr/local/bin/docker-compose'
#Container source info
default['source']['con1']='/etc/docker/con1'
