---------------------------------------------------------------------------------
-- Game Analytics for Corona SDK: Composer example 
---------------------------------------------------------------------------------
local composer = require "composer"
local GA = require "plugin.gameanalytics"

---------------------------------------------------------------------------------
-- Setup storyboard
---------------------------------------------------------------------------------
composer.gotoScene( "scene1", "fade", 300 )

---------------------------------------------------------------------------------
-- Set Game Analytics properties and initialize it.
---------------------------------------------------------------------------------
-- Important notice: Initialization of Game Analytics should always happend after 
-- you setup composer and call composer.gotoScene
---------------------------------------------------------------------------------

-- If iOS and no ads in the app then you should set the GA.iosIdentifierForVendor property to true.
GA.iosIdentifierForVendor = false

GA.isDebug = true
GA.runInSimulator = true

GA.useComposer = true -- hook composer and fill in area parameter in GA events.
GA.submitComposerEvents = true-- submit scene changes and time spent on scenes.

GA.init ({
	game_key   = 'paste_your_game_key_here',
	secret_key = 'paste_your_secret_key_here',
	build_name = '1.0',
})

