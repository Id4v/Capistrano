namespace :sf1 do
    desc 'Clear cache for Symfony1 projects'
    task :clear_cache do
        execute "cd #{deploy_to}/current/ && php symfony cc"
    end

    desc 'Update Project Permissions'
    task :permission do
        execute "cd #{deploy_to}/current/ && php symfony project:permissions"
    end
end