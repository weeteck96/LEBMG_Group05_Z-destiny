-----------------------------------------------------------------------------------------
--
--restart.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )

local scene = composer.newScene()

local background
local restart_button

-- "scene:create()"
function scene:create( event )

	local sceneGroup = self.view

	background = display.newImageRect( "restart.jpg", 480, 320 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY

    restart_button = display.newImageRect( "restartbtn.png", 200 ,150 )
	restart_button.x = 120
	restart_button.y = 262
	restart_button = display.newRect( 100 ,100, 110, 30 )

	restart_button.x = 120
	restart_button.y = 262


	sceneGroup:insert( restart_button )

	restart_button:addEventListener( "touch", onTouchRestartButton )
end

local function onTouchRestartButton( event )
    if event.phase == "ended" then
        composer.gotoScene( "menu" )
    end
end


-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

        print("Now we are in scene3.lua!")
    elseif ( phase == "did" ) then

    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

    end
end


-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view

end

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
