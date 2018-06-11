-----------------------------------------------------------------------------------------
--
-- win.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )

local scene = composer.newScene()

local background
local exit_btn
--local restartbtn

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

--function onTouchRestartButton( event )

		       --composer.removeScene( "scene2" )
        --composer.gotoScene( "scene1", "fade"   )

--end

-- "scene:create()"
function scene:create( event )

    local sceneGroup = self.view


	background = display.newImageRect( "win.jpg", 480, 320 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY

    exit_button = display.newImageRect( "exit.png", 100 ,70 )
	exit_button.x = 410
	exit_button.y = 40
	exit_button = display.newRect( 100 ,100, 110, 30 )

	exit_button.x = 410
	exit_button.y = 40


	sceneGroup:insert( exit_button )

	--restartbtn = display.newImageRect( "restartbtn.png", 150 ,100 )
	--restartbtn.x = 90
	--restartbtn.y = 262
	--restartbtn = display.newRect( 100 ,100, 110, 30 )

	--restartbtn.x = 90
	--restartbtn.y = 262


	--sceneGroup:insert( restartbtn )

	exit_button:addEventListener( "touch", onTouchExitButton )
	--restartbtn:addEventListener( "touch", onTouchRestartButton )
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
