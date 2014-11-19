#Load stuff from prod by default
require_relative "config_prod"

#If needed you can overwrite variables when they're different from Prod values
set :keep_releases, 5;
set :deploy_branch , "dev";
set :tasks_to_run , ["sf2:composer_install", "sf2:clear_cache", "sf2:publish_assets"];
