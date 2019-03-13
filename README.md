# swiggy
### Install RVM ###
* curl -L get.rvm.io | bash
* source ~/.rvm/scripts/rvm
#### Add the following to your ~/.profile in order to source RVM everytime you run Terminal.app: ####
* [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

### Check RVM Requirements ###
* rvm requirements

### Install ruby using RVM ###
* rvm install 2.3.1

### To set as your current version of Ruby run the following command ###
* rvm use 2.3.1
* rvm default 2.3.1

### Ruby Version ###
* ruby -v

### Where Ruby is located executing the command ###
* which ruby

### Update Database ###
* update the config/database.yml file

### Create Database ###
* rake db:setup
* Or
* rake db:create

### Run all migrations ###
* rake db:migrate

### Run Server ###
* rails s

### Rails Console ###
* rails c
