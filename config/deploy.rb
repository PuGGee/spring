lock "3.7.1"

set :application, "spring"
set :repo_url, "git@github.com:PuGGee/spring.git"


append :linked_files, "config/database.yml", "config/secrets.yml"

append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

set :keep_releases, 5
