-----------------------------------------------------------------------------------------
--
--restart.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )

local scene = composer.newScene()

local restart_button

-- "scene:create()"
function scene:create( event )

    local sceneGroup = self.view

end

local function onTouchRestartButton( event )
    if event.phase == "ended" then
        composer.gotoScene( "scene1" )
    end
end

function scene:create( event )

    local sceneGroup = self.view

    restart_button = display.newRect( 100 ,100, 110, 30 )

    sceneGroup:insert( restart_button )

    restart_button.x=240
    restart_button.y=230

    restart_button:addEventListener( "touch", onTouchRestartButton )


end

local background = display.newImageRect( "restart.jpg", 480, 320 )
background.x = display.contentCenterX
background.y = display.contentCenterY

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
