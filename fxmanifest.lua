fx_version 'cerulean'
game 'gta5'

description 'Military Safe Zone with NPCs'
author 'sinor system'
version '1.0.0'
lua54 'yes'

shared_scripts {
    'config.lua'
}

server_scripts {
    "server/main.lua"
}

client_scripts {
    "client/main.lua"
}

escrow_ignore {
    'config.lua',  
  }

dependencies {
    "qb-core"
}
