-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )

local scene = composer.newScene()

local background
local exit_btn

local function closeapp()
       if  system.getInfo("platformName")=="Android" then
           native.requestExit()
       else
           os.exit()
      end

end

function onTouchExitButton( event )


     timer.performWithDelay(400,closeapp)
end

-- "scene:create()"
function scene:create( event )

    local sceneGroup = self.view


	background = display.newImageRect( "backgound_exit_480x320.jpg", 480, 320 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY

    exit_button = display.newImageRect( "exit.png", 150 ,100 )
	exit_button.x = 90
	exit_button.y = 262
	exit_button = display.newRect( 100 ,100, 110, 30 )

	exit_button.x = 90
	exit_button.y = 262


	sceneGroup:insert( exit_button )

	exit_button:addEventListener( "touch", onTouchExitButton )
end



-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

        print("Now we are in scene2.lua!")
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

