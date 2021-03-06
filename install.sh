#/bin/bash
# Die if any subcommand fails
set -x
if [ $PWD = "/home/ubuntu/workspace" ]; then
  rm -rf {,.[!.],..?}*
fi
echo -e "\nHost github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
npm install -g grunt-cli
npm install -g serverless@0.0.15 
npm install -g yo generator-angular@0.15.0 generator-karma
yes | bower
sudo pip install awscli
echo "Setting up pantryexpress-api"
yes | git clone git@github.com:justonian/pantryexpress-api
echo "Install backend dependencies"
cd pantryexpress-api
npm install
echo "Setting up pantryexpress-web"
cd ..
yes | git clone git@github.com:justonian/pantryexpress-web
cd pantryexpress-web
npm install
bower install
grunt
