*Note that I included the Berksfile after submitting everything Thursday*


* **Deploy Chef_Challenge**  
   These steps are to be executed on the Chef Workstation running ChefDK
  * Change directory to the root of /\<chef repo\>/cookbooks/
  * Clone Chef_Challenge Repository to the root of the cookbooks directory  
    _Execute_ `git clone https://github.com/ipryseski/Chef_Challenge.git`
  * Install Docker cookbook  
    _Execute_ `knife supermarket install docker 4.9.3`
  * Deploy or Test
    * Deploy
      * Upload Chef_Challenge and docker to Chef Server  
        _Execute_ `knife cookbook upload Chef_Challenge --include-dependencies`
      * Find your node. Take note of the name.  
        _Execute_ `knife node list`
      * Assign run list to the node you picked out. Replace <nodename> with the name reference above.  
        _Execute_ `knife node run_list add <nodename> "recipe[Chef_Challenge::default]"`
      * Run remote cmd for Chef-client to update.  
        _Execute_ `knife ssh 'name:<nodename>' 'sudo chef-client' -x root`
    * Test  
      Requires Test-kitchen to be setup
      * Change directory to the root of the Chef_Challenge within cookbooks  
        _Execute_ `kitchen test`
