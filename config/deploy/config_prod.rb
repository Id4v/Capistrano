$deployServer = '88.184.102.144'
$deployUser = 'david'
$deployTo = '/home/david/Websites/Id4v'
$deployBranch = "master"
$tasksToRun = %w{sf2:composer_install sf2:clear_cache sf2:publish_assets}
