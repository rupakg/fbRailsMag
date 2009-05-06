# We need to turn on the :pty option because it would seem we don�t get the passphrase prompt from git if we don�t.
default_run_options[:pty] = true
# Older versions of git (e.g. 1.4.4.2) don�t support -q on git checkout command. This will cause your deployment to fail by default. To fix either upgrade git or set the following flag
set :scm_verbose, true
# If you aren't using Subversion to manage your source code, specify your SCM below
set :scm, :git
set :scm_username, "rupakg"
# If you set a paraphrase while generating a sshkey on the server, specify it here.
set :scm_passphrase, "showcase"
# Point the :repository option to your github clone URL
set :repository,  "git@github.com:rupakg/fbRailsMag.git"
# for older versions of capistrano try set :branch, "origin/master"
set :branch, "master"

# Set application name
set :application, "fbRailsMag"
role :app, "showcaseideas.com"
role :web, "showcaseideas.com"
role :db,  "showcaseideas.com", :primary => true

# set user names
set :user, "showcase"
# set deploy location. make sure to put the whole path
set :deploy_to, "/home/showcase/etc/rails_apps/#{application}"

# Remote caching will keep a local git repo on the server you�re deploying to and simply run a fetch from that rather than an entire clone. This is probably the best option and will only fetch the differences each deploy
set :deploy_via, :remote_cache
# If you are on a shared host, sudo might be unavailable to you, or maybe you just want to avoid using sudo.
set :use_sudo, false

# Rails stuff
set :rails_env, "production"

