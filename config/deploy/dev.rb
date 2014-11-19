#Dev Target Deployment Rules

#Import Dev Config
require_relative 'config_dev'

#Define roles
role :app, [$deployServer]
role :web, [$deployServer]
role :db,  [$deployServer]

#Ask for the deployement branch

#Uncomment the line below to use the actual branch of your local repo as default
#ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

#Uncomment the line below to use the configured branch as default
ask :branch, $deployBranch

#Deployment path
set :deploy_to, $deployTo

# Custom SSH Options
# Use ssh-agent to log on server
# If not possible, go back to password authentication
set :ssh_options,{
  user: $deployUser,
  forward_agent: true,
  auth_methods: %w(publickey password)
}
