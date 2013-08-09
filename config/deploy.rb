require "bundler/capistrano"
require "rvm/capistrano"

load "config/recipes/base"
load "config/recipes/node"
load "config/recipes/nginx_puma"
load "config/recipes/puma"
load "config/recipes/mysql"
load "config/recipes/rvm"

server "galleryphoto.mooo.com", :web, :app, :db, :primary => true

set :site_url, "galleryphoto.mooo.com"

set :application, "gallery"
set :user, "olivierdoe"

set :deploy_to, "/home/#{user}/apps/#{application}"
set :use_sudo, false

set :shared_children, shared_children + %w{public/uploads}

set :scm, "git"
set :repository,  "https://github.com/oducroux/#{application}.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true


after "deploy", "deploy:cleanup" # keep only the last 5 releases


#set :shared_children, shared_children + %w{public/uploads}

