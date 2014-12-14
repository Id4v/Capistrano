set :branch, "sf1"

namespace :deploy do
    after :finished, :after_push do
        on roles(:web) do
            invoke "sf1:after_push"
        end
    end
end

namespace :sf1 do

    desc 'After Push task'
    task :after_push do
        puts "a";
        #invoke "sf1:permission"
        #invoke "sf1:clear_cache"
    end

    desc 'Clear cache for Symfony1 projects'
    task :clear_cache do
        on roles(:web) do
            execute "cd #{deploy_to}/current/ && php symfony cc"
        end
    end

    desc 'Update Project Permissions'
    task :permission do
        on roles(:web) do
            execute "cd #{deploy_to}/current/ && php symfony project:permissions"
        end
    end
end