fx_version 'cerulean'
games {"gta5"}

author 'Nazu'
version '1.1.0'
lua54 'yes'

-----------------
-- Dependencies 
----------
dependencies { 'ox_lib', }

----------
-- CLIENT 
------
client_scripts {
    'client/*.lua',
}

----------
-- SERVER 
------
server_scripts {
    'server/*.lua',
}

-----------
-- SHARED
-------
shared_script {
    'config.lua',
    'locales/*.lua',
    'shared/*.lua',
    '@ox_lib/init.lua',
}
