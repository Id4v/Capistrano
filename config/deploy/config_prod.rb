set :deployServer , '88.184.102.144';
set :deployUser , 'david';
set :deployTo , '/home/david/Websites/Id4v';
set :deployBranch , "master";
set :tasksToRun , %w{sf2:composer_install sf2:clear_cache sf2:publish_assets};
