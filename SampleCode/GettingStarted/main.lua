---------------------------------------------------------------------------------
-- Game Analytics for Corona SDK: Getting started example 
---------------------------------------------------------------------------------

---------------------------------------------
-- Require GA SDK
---------------------------------------------
local GA = require "plugin.gameanalytics"

---------------------------------------------
-- Set some properties. 
---------------------------------------------
GA.isDebug                  = true
GA.runInSimulator           = true

-- Initialize GA
GA.init ({
	game_key   = 'paste_your_game_key_here',
	secret_key = 'paste_your_secret_key_here',
	build_name = '1.0',
})

---------------------------------------------
-- Submit some custom events 
---------------------------------------------
-- Custom business event example
GA.newEvent ( "business", { event_id = "iap:purchase" , currency = "USD", amount = 0.99 } )  

-- Custom user events
GA.newEvent ( "user", { gender = "F", birth_year = "1990", friend_count = 3 } )
GA.newEvent ( "user", { install_site="Facebook", install_campaign="adgroup" })

-- Custom design event example: submit x, y positions when touching the screen
local function touchHandler ( event )
	if "ended" == event.phase then
		GA.newEvent ( "design", { event_id = "touch_test", area = "some_area", x = event.x, y=event.y } )
	end
end
Runtime:addEventListener ( "touch", touchHandler )


