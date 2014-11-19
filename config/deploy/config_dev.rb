#Load stuff from prod by default
require_relative "config_prod"

#If needed you can overwrite variables when they're different from Prod values
#$deployServer = 'Ip'
#$deployUser = 'deployUsername'
#$deployTo = 'deployPath'
$deployBranch = "dev"
$tasksToRun = %w{sf2:composer_install sf2:clear_cache sf2:publish_assets}
