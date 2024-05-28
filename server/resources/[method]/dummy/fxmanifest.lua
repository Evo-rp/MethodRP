fx_version 'cerulean'
game 'gta5'

name "dummy"
description "asd"
author "asd"
version "1.0"

lua54 'yes'
use_experimental_fxv2_oal 'yes'

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}
