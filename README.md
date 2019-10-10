# CHEF_CHALLENGE COOKBOOK
The goal of this cookbook is to deploy Javascript through containerized Node.js service and Nginx web server.
- Both the Node.js and Nginx services need to be deployed within a docker container
- Of the two containers only the Nginx should be directly exposed.
- The Nginx server plays the role of the webserver/frontend/reverse proxy. 
  - Communication to the Node.js instance will travel across a private network.

## REQUIREMENTS
- Chef 12 or later

## PLATFORM SUPPORT
- CentOS 7

## COOKBOOK DEPENDENCIES
- Docker Cookbook 4.9.3 or later
  - https://supermarket.chef.io/cookbooks/docker#berkshelf
- Docker-Compose 1.16.1 or later
  - https://github.com/docker/compose/

## DEPLOYMENT / TESTING
- Initial tests were handled through test-kitchen.
- Final deployment was done within a small VMware environment
- Inspec focus points
  - Docker is installed and the service is running/enabled.
  - Port 80 has an active listener on 0.0.0.0 /ipv4 or "::" /ipv6.
  - Port 3000 is not avaliable.
  - Verification that both containers are in a running state.
  - Verification that the http response from the previous listener is returning correct results.
- There is a full output from a Kitchen test under [!Notes/Kitchen_Test.txt](!Notes/Kitchen_Test.txt)
  - Additional Kitchen Converge logs [!Notes/Kitchen_Converge.md] 
