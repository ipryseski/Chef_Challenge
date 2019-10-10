-----> Starting Kitchen (v2.3.3)
-----> Creating <default-centos-7>...
       Bringing machine 'default' up with 'virtualbox' provider...
       ==> default: Importing base box 'bento/centos-7'...
==> default: Matching MAC address for NAT networking...
       ==> default: Checking if box 'bento/centos-7' is up to date...
       ==> default: Setting the name of the VM: kitchen-Chef_Challenge-default-centos-7-4e46772b-717f-496d-b277-995b6e218ee6
       ==> default: Clearing any previously set network interfaces...
       ==> default: Preparing network interfaces based on configuration...
           default: Adapter 1: nat
       ==> default: Forwarding ports...
           default: 22 (guest) => 2222 (host) (adapter 1)
       ==> default: Running 'pre-boot' VM customizations...
       ==> default: Booting VM...
       ==> default: Waiting for machine to boot. This may take a few minutes...
           default: SSH address: 127.0.0.1:2222
           default: SSH username: vagrant
           default: SSH auth method: private key
           default: 
           default: Vagrant insecure key detected. Vagrant will automatically replace
           default: this with a newly generated keypair for better security.
           default: 
           default: Inserting generated public key within guest...
           default: Removing insecure key from the guest if it's present...
           default: Key inserted! Disconnecting and reconnecting using new SSH key...
       ==> default: Machine booted and ready!
       ==> default: Checking for guest additions in VM...
           default: The guest additions on this VM do not match the installed version of
           default: VirtualBox! In most cases this is fine, but in rare cases it can
           default: prevent things such as shared folders from working properly. If you see
           default: shared folder errors, please make sure the guest additions within the
           default: virtual machine match the version of VirtualBox you have installed on
           default: your host and reload your VM.
           default: 
           default: Guest Additions Version: 6.0.10
           default: VirtualBox Version: 5.2
       ==> default: Setting hostname...
       ==> default: Mounting shared folders...
           default: /tmp/omnibus/cache => /home/eden/.kitchen/cache
       ==> default: Machine not provisioned because `--no-provision` is specified.
       [SSH] Established
       Vagrant instance <default-centos-7> created.
       Finished creating <default-centos-7> (0m39.15s).
-----> Converging <default-centos-7>...
       Preparing files for transfer
$$$$$$ You must set your run_list in your Policyfile instead of kitchen config. The run_list in your config will be ignored.
$$$$$$ Ignored run_list: ["recipe[Chef_Challenge::default]"]
       Installing cookbooks for Policyfile /home/eden/chef-repo/cookbooks/Chef_Challenge/Policyfile.rb using `chef install`
       Installing cookbooks from lock
       Installing Chef_Challenge 0.1.0
       Using      docker         4.9.3
       Preparing dna.json
       Exporting cookbook dependencies from Policyfile /tmp/default-centos-7-sandbox-20191010-1803-e51v51...
       Exported policy 'Chef_Challenge' to /tmp/default-centos-7-sandbox-20191010-1803-e51v51
       
       To converge this system with the exported policy, run:
         cd /tmp/default-centos-7-sandbox-20191010-1803-e51v51
         chef-client -z
       Removing non-cookbook files before transfer
       Preparing validation.pem
       Preparing client.rb
-----> Installing Chef install only if missing package
       Downloading https://omnitruck.chef.io/install.sh to file /tmp/install.sh
       Trying wget...
       Download complete.
       el 7 x86_64
       Getting information for chef stable  for el...
       downloading https://omnitruck.chef.io/stable/chef/metadata?v=&p=el&pv=7&m=x86_64
         to file /tmp/install.sh.2802/metadata.txt
       trying wget...
       sha1	67231262677129ba7335f7850b450eca028e46e0
       sha256	ca6d2dfe9f4c7d7ba689ce42341f9aef37f7d2dde3fc799edb24cddcbbc41cfa
       url	https://packages.chef.io/files/stable/chef/15.3.14/el/7/chef-15.3.14-1.el7.x86_64.rpm
       version	15.3.14
       downloaded metadata file looks valid...
       /tmp/omnibus/cache/chef-15.3.14-1.el7.x86_64.rpm exists
       Comparing checksum with sha256sum...
       
       WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING
       
       You are installing an omnibus package without a version pin.  If you are installing
       on production servers via an automated process this is DANGEROUS and you will
       be upgraded without warning on new releases, even to new major releases.
       Letting the version float is only appropriate in desktop, test, development or
       CI/CD environments.
       
       WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING
       
       Installing chef 
       installing with rpm...
       warning: /tmp/omnibus/cache/chef-15.3.14-1.el7.x86_64.rpm: Header V4 DSA/SHA1 Signature, key ID 83ef826a: NOKEY
       Preparing...                          ################################# [100%]
       Updating / installing...
          1:chef-15.3.14-1.el7               ################################# [100%]
       Thank you for installing Chef Infra Client! For help getting started visit https://learn.chef.io
       Transferring files to <default-centos-7>
       +---------------------------------------------+
       ✔ 2 product licenses accepted.
       +---------------------------------------------+
       Starting Chef Infra Client, version 15.3.14
       Creating a new client identity for default-centos-7 using the validator key.
       Using policy 'Chef_Challenge' at revision 'a33122b95a912acc055e8fd02a58a30d42b37c9334f613878f0628b8f758c177'
       resolving cookbooks for run list: ["Chef_Challenge::default@0.1.0 (c119b5e)"]
       Synchronizing Cookbooks:
         - Chef_Challenge (0.1.0)
         - docker (4.9.3)
       Installing Cookbook Gems:
       Compiling Cookbooks...
       Converging 12 resources
       Recipe: Chef_Challenge::default
         * yum_repository[docker-stable] action create
           * template[/etc/yum.repos.d/docker-stable.repo] action create
             - create new file /etc/yum.repos.d/docker-stable.repo
             - update content in file /etc/yum.repos.d/docker-stable.repo from none to ce57b4
             --- /etc/yum.repos.d/docker-stable.repo	2019-10-10 20:12:29.396822969 +0000
             +++ /etc/yum.repos.d/.chef-docker-stable20191010-2952-1gekrgq.repo	2019-10-10 20:12:29.396822969 +0000
             @@ -1 +1,11 @@
             +# This file was generated by Chef
             +# Do NOT modify this file by hand.
             +
             +[docker-stable]
             +name=Docker Stable Respository
             +baseurl=https://download.docker.com/linux/centos/7/x86_64/stable
             +enabled=1
             +fastestmirror_enabled=0
             +gpgcheck=1
             +gpgkey=https://download.docker.com/linux/centos/gpg
             - change mode from '' to '0644'
             - restore selinux security context
           * execute[yum clean metadata docker-stable] action run
             - execute yum clean metadata --disablerepo=* --enablerepo=docker-stable
           * execute[yum-makecache-docker-stable] action run
             - execute yum -q -y makecache --disablerepo=* --enablerepo=docker-stable
           * ruby_block[package-cache-reload-docker-stable] action create
             - execute the ruby block package-cache-reload-docker-stable
           * execute[yum clean metadata docker-stable] action nothing (skipped due to action :nothing)
           * execute[yum-makecache-docker-stable] action nothing (skipped due to action :nothing)
           * ruby_block[package-cache-reload-docker-stable] action nothing (skipped due to action :nothing)
         
         * yum_package[docker-ce] action install
           - install version 3:19.03.3-3.el7.x86_64 of package docker-ce
         * service[docker] action enable
           - enable service service[docker]
         * service[docker] action start
           - start service service[docker]
         * yum_package[curl] action install (up to date)
         * execute[sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose] action run
           - execute sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
         * file[/usr/local/bin/docker-compose] action create
           - change mode from '0644' to '0755'
           - restore selinux security context
         * directory[/etc/docker/con1] action create
           - create new directory /etc/docker/con1
           - change mode from '' to '0755'
           - change owner from '' to 'root'
           - change group from '' to 'root'
           - restore selinux security context
         * remote_directory[/etc/docker/con1/] action create
         Recipe: <Dynamically Defined Resource>
           * cookbook_file[/etc/docker/con1/docker-compose.yml] action create
             - create new file /etc/docker/con1/docker-compose.yml
             - update content in file /etc/docker/con1/docker-compose.yml from none to d2caeb
             --- /etc/docker/con1/docker-compose.yml	2019-10-10 20:13:07.517767500 +0000
             +++ /etc/docker/con1/.chef-docker-compose20191010-2952-pktb3m.yml	2019-10-10 20:13:07.517767500 +0000
             @@ -1 +1,27 @@
             +version: '3'
             +services:
             +  nginx:
             +    image: nginx:latest
             +    hostname: nginx
             +    container_name: production_nginx
             +    depends_on:
             +            - node
             +    volumes:
             +      - ./nginx/nginx.conf:/etc/nginx/nginx.conf
             +      - ./nginx/error.log:/etc/nginx/error_log
             +      - ./nginx/cache/:/etc/nginx/cache
             +    ports:
             +      - 80:80
             +
             +  node:
             +    image: "node:11"
             +    hostname: node
             +    user: "node"
             +    working_dir: /home/node/app
             +    environment:
             +      - NODE_ENV=production
             +    volumes:
             +      - ./node/:/home/node/app
             +    command: "node /home/node/app/index.js"
             +
             - change mode from '' to '0755'
             - change owner from '' to 'root'
             - change group from '' to 'root'
             - restore selinux security context
           * directory[/etc/docker/con1/nginx] action create
             - create new directory /etc/docker/con1/nginx
             - change mode from '' to '0755'
             - change owner from '' to 'root'
             - change group from '' to 'root'
             - restore selinux security context
           * cookbook_file[/etc/docker/con1/nginx/nginx.conf] action create
             - create new file /etc/docker/con1/nginx/nginx.conf
             - update content in file /etc/docker/con1/nginx/nginx.conf from none to 07ff37
             --- /etc/docker/con1/nginx/nginx.conf	2019-10-10 20:13:07.588767017 +0000
             +++ /etc/docker/con1/nginx/.chef-nginx20191010-2952-noygmn.conf	2019-10-10 20:13:07.588767017 +0000
             @@ -1 +1,21 @@
             +
             +events {
             +  worker_connections  4096;  ## Default: 1024
             +}
             +http{
             +	server {
             +			listen 80;
             +			server_name test.server.com;
             +			resolver 127.0.0.11 valid=30s;
             +			set $upstream_server http://node:3000;
             +
             +			location / {
             +			    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
             +                            proxy_set_header Host $http_host;
             +                            proxy_redirect off;	
             +                            proxy_pass $upstream_server;
             +			}
             +	}
             +}
             +
             - change mode from '' to '0755'
             - change owner from '' to 'root'
             - change group from '' to 'root'
             - restore selinux security context
           * directory[/etc/docker/con1/node] action create
             - create new directory /etc/docker/con1/node
             - change mode from '' to '0755'
             - change owner from '' to 'root'
             - change group from '' to 'root'
             - restore selinux security context
           * cookbook_file[/etc/docker/con1/node/Dockerfile] action create
             - create new file /etc/docker/con1/node/Dockerfile
             - update content in file /etc/docker/con1/node/Dockerfile from none to ec0c3a
             --- /etc/docker/con1/node/Dockerfile	2019-10-10 20:13:07.637766685 +0000
             +++ /etc/docker/con1/node/.chef-Dockerfile20191010-2952-tlpnie	2019-10-10 20:13:07.637766685 +0000
             @@ -1 +1,12 @@
             +FROM centos:latest
             +RUN rpm -Uvh http://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
             +WORKDIR /usr/src/app
             +RUN yum install nodejs npm -y 
             +RUN npm install -g angular-cli
             +# Bundle app source
             +COPY . .
             +RUN cd /opt/src; npm install
             +EXPOSE 3000
             +ENTRYPOINT ["ng", "serve", "-H", "0.0.0.0"]
             +CMD [ "node", "index.js" ]
             - change mode from '' to '0755'
             - change owner from '' to 'root'
             - change group from '' to 'root'
             - restore selinux security context
           * cookbook_file[/etc/docker/con1/node/index.js] action create
             - create new file /etc/docker/con1/node/index.js
             - update content in file /etc/docker/con1/node/index.js from none to e97ffb
             --- /etc/docker/con1/node/index.js	2019-10-10 20:13:07.668766474 +0000
             +++ /etc/docker/con1/node/.chef-index20191010-2952-yhkd24.js	2019-10-10 20:13:07.668766474 +0000
             @@ -1 +1,17 @@
             +
             +const http = require('http');
             +
             +const hostname = '0.0.0.0';
             +/*const hostname = '0.0.0.0';*/
             +const port = 3000;
             +
             +const server = http.createServer((req, res) => {
             +  res.statusCode = 200;
             +  res.setHeader('Content-Type', 'text/plain');
             +  res.end('Hello Simpli.fi!\n');
             +});
             +
             +server.listen(port, hostname, () => {
             +  console.log(`Server running at http://${hostname}:${port}/`);
             +});
             - change mode from '' to '0755'
             - change owner from '' to 'root'
             - change group from '' to 'root'
             - restore selinux security context
         
       Recipe: Chef_Challenge::default
         * execute[Executing docker-compose] action run
           - execute /usr/local/bin/docker-compose -f /etc/docker/con1/docker-compose.yml up -d
         * service[firewalld] action enable
           - enable service service[firewalld]
         * service[firewalld] action start
           - start service service[firewalld]
         * execute[Firewall enable http] action run
           - execute firewall-cmd --permanent --zone=public --add-service=http
         * execute[Firewall reload] action run
           - execute firewall-cmd --reload
       
       Running handlers:
       Running handlers complete
       Chef Infra Client finished, 23/27 resources updated in 01 minutes 40 seconds
       Downloading files from <default-centos-7>
       Finished converging <default-centos-7> (1m55.72s).
-----> Kitchen is finished. (2m35.57s)

