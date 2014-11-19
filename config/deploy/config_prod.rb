set :deploy_server , '88.184.102.144';
set :deploy_user , 'david';
set :deploy_to , '/home/david/Websites/Id4v';
set :deploy_branch , "master";
set :tasks_to_run , %w{sf2:composer_install sf2:clear_cache sf2:publish_assets};
set :keep_releases, 3;
