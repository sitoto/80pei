require 'bundler/capistrano'
require 'rvm/capistrano'

default_run_options[:pty] = true  # Must be set for the password prompt
                                  # from git to work

set :rvm_ruby_string, 'ruby-2.0.0-p247'
set :rvm_type, :user
set :application, "80pei"
set :repository, "git://github.com/sitoto/ruby.git"
set :branch, "master"
set :scm, :git
set :user, "ruby"
set :deploy_to, "/mnt/www/#{application}"
set :runner, "ruby"

set :git_shallow_clone, 1 # Shallow cloning will do a clone each time, 
			  # but will only get the top commit, 
			  # not the entire repository history.

role :web, "42.121.0.135" 
role :app, "42.121.0.135"
role :db,  "42.121.0.135", :primary => true 

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
