require 'bundler/capistrano'
require 'rvm/capistrano'

default_run_options[:pty] = true  # Must be set for the password prompt
                                  # from git to work

set :rvm_ruby_string, 'ruby-2.0.0-p247'
set :rvm_type, :user
set :application, "80pei"
set :repository, "git://github.com/sitoto/80pei.git"
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

set :unicorn_path, "#{deploy_to}/current/config/unicorn.rb"

namespace :deploy do
  task :start, :roles => :app do
    run "cd #{deploy_to}/current/; RAILS_ENV=production bundle exec unicorn_rails -c #{unicorn_path} -D"
  end

  task :stop, :roles => :app do
    run "kill -QUIT `cat #{deploy_to}/current/tmp/pids/unicorn.pid`"
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "kill -USR2 `cat #{deploy_to}/current/tmp/pids/unicorn.pid`"
  end
end


task :init_shared_path, :roles => :web do
  run "mkdir -p #{deploy_to}/shared/log"
  run "mkdir -p #{deploy_to}/shared/pids"
  run "mkdir -p #{deploy_to}/shared/assets"
  run "mkdir -p #{deploy_to}/shared/public/spree"
  run "mkdir -p #{deploy_to}/shared/public/ckeditor_assets"
end

task :link_shared_files, :roles => :web do
  run "ln -sf #{deploy_to}/shared/public/ckeditor_assets #{deploy_to}/current/public/ckeditor_assets"
  run "ln -sf #{deploy_to}/shared/public/spree #{deploy_to}/current/public/spree"
  run "ln -sf #{deploy_to}/shared/config/*.yml #{deploy_to}/current/config/"
  run "ln -sf #{deploy_to}/shared/config/unicorn.rb #{deploy_to}/current/config/"
  run "ln -sf #{deploy_to}/shared/config/initializers/secret_token.rb #{deploy_to}/current/config/initializers"
end

task :compile_assets, :roles => :web do
  run "cd #{deploy_to}/current/; RAILS_ENV=production bundle exec rake assets:precompile"
end

after "deploy:finalize_update","deploy:symlink", :init_shared_path, :link_shared_files, :compile_assets
