fx_version 'cerulean'
games {"gta5"}

author 'Nazu'
version '1.0.0'
lua54 'yes'


------
-- SHARED
------
shared_script {
    'config.lua',
    'shared/**/*.lua',
    '@ox_lib/init.lua',
}

------
-- CLIENT 
------
client_scripts {
    'client/*.lua',
    -- 'client/**/*.lua',
}

------
-- SERVER 
------
server_scripts {
    'server/*.lua',
    -- 'server/**/*.lua',
}

------
-- Dependencies 
------
dependencies { 'ox_lib', 'nazu-bridge' }

------
-- NUI 
------
-- ui_page 'web/index.html'

-- files {'web/index.html', 'web/style.css', 'web/js/index.js', 'web/images/*'}
