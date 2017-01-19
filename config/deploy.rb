lock "3.7.1"

set :application, "spring"
set :user, "lewis"
set :stages, ["production"]
set :default_stage, "production"

set :rvm_ruby_version, '2.3.0@spring'

set :scm, :git
set :repo_url, "git@github.com:PuGGee/spring.git"
set :branch, "master"

set :deploy_to, "/home/lewis/apps/spring"
set :deploy_via, :remote_cache

append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

set :keep_releases, 5
