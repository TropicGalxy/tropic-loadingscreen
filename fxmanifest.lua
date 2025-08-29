fx_version 'cerulean'
game 'gta5'

lua54 'yes'
author 'TropicGalxy'
description 'loading screen'
version '1.0.0'

loadscreen 'index.html'

files {
    'index.html',
    'config.js',
    'logo.png',
    'music/*.mp3',
}

client_script 'client.lua'

loadscreen_cursor 'yes'
loadscreen_manual_shutdown 'yes'
use_experimental_fxv2_oal 'yes'