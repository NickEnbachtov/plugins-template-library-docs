-- 
-- Abstract: SimpleAI Library Plugin Test Project
-- 
-- Sample code is MIT licensed, see http://www.coronalabs.com/links/code/license
-- Copyright (C) 2015 Corona Labs Inc. All Rights Reserved.
--
------------------------------------------------------------

-- Load plugin library
local SimpleAI = require "plugin.SimpleAI"

-------------------------------------------------------------------------------
-- BEGIN (Insert your sample test starting here)
-------------------------------------------------------------------------------

local physics = require( "physics" )
physics.start()

local sceneGroup = display.newGroup( );
local mainGroup = display.newGroup( );
local buttonGroup = display.newGroup( );
local playerGroup = display.newGroup( );
system.activate( "multitouch" )

-- forward declarations and other locals
local screenW, screenH, halfW, halfH = display.contentWidth, display.contentHeight, display.contentWidth*0.5, display.contentHeight*0.5

-- create a grey rectangle as the backdrop
local background = display.newRect(mainGroup, 0, 0, screenW, screenH )
background.anchorX = 0
background.anchorY = 0
background:setFillColor( 0.816, 0.957, 0.969 )

-- create a ground rectangle as the ground base
local ground = display.newImage( mainGroup, "ground.png", halfW, screenH )
ground.type = "ground"
physics.addBody( ground, "static", { friction=0.3 } )

-- create a platform rectangle
local platform = display.newImage( mainGroup, "platform.png", halfW-50, screenH-250 )
platform.type = "platform"
physics.addBody( platform, "static", { friction=0.3 } )

-- player instance
local player = display.newImage(playerGroup, "wingMan1.png", halfW, display.contentHeight-100);
player.type = "player"
player.width = player.width/2
player.height = player.height/2
physics.addBody( player, { density=1.0, friction=0.3, bounce=0.2 } )
player.isFixedRotation = true


-- enemy instance
local enemy = SimpleAI.newAI(mainGroup, "snailWalk1.png", halfW-50, display.contentHeight-300, "patrol")

-- enemy.fireImg = "bullet.png" -- add bullet image
-- enemy.allowShoot = true

-- Controllers
-- action buttons	
local jumpButton = display.newImage( buttonGroup, "jumpButton.png",screenW-45, display.contentHeight-150 )
function jump( event )
	-- print("tappy")				
	player:applyForce( 0, -1000, player.x, player.y )		
	return true
end
jumpButton:addEventListener("tap", jump)

local rightButton = display.newImage( buttonGroup, "rightButton.png", 45, display.contentHeight-150 )
function moveRight( event )
	-- print("tappy right")
	if(event.phase == "began") then
		player.action = "right"	
	else
		player.action = "stop"	
	end
		
	return true
end
rightButton:addEventListener("touch", moveRight)

local leftButton = display.newImage( buttonGroup, "leftButton.png", 45, display.contentHeight-150-85 )
function moveLeft( event )
	-- print("tappy left")
	if(event.phase == "began") then
		player.action = "left"	
	else
		player.action = "stop"	
	end		
	return true
end
leftButton:addEventListener("touch", moveLeft)

-- runtime listener
function actionList( event )
	if(player.action == "right") then
		player.x = player.x + 5
	elseif(player.action == "left") then
		player.x = player.x - 5
	end			
	return true
end
Runtime:addEventListener( "enterFrame", actionList )



sceneGroup:insert( mainGroup )		
sceneGroup:insert( playerGroup )
-------------------------------------------------------------------------------
-- END
-------------------------------------------------------------------------------
