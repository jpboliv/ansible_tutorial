# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

set :application, "ansible_tutorial"
set :repo_url, "git://github.com/jpboliv/ansible_tutorial.git"
set :deploy_to, "/home/deploy/apps"
set :chruby_ruby, 'ruby-2.6.5'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system'

require_relative 'deploy/plugins/capistrano_rails'