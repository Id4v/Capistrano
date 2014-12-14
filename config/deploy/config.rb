if fetch(:project_type) == 'sf1'
    require_relative("projects/tasks/sf1_tasks");
elsif fetch(:project_type) == 'sf2'
    require_relative("projects/tasks/sf2_tasks");
end

set :deploy_to, "/var/www/Test/"